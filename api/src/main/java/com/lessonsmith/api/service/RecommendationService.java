package com.lessonsmith.api.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lessonsmith.api.dto.*;
import com.lessonsmith.api.model.Game;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class RecommendationService {

    private final List<Game> library;
    private final GamePatternService patternService;
    private final DomainService domainService;
    private final GameFilter gameFilter;

    public RecommendationService(ObjectMapper objectMapper,
                                 GamePatternService patternService,
                                 DomainService domainService,
                                 GameFilter gameFilter) {
        this.patternService = patternService;
        this.domainService = domainService;
        this.gameFilter = gameFilter;
        this.library = loadLibrary(objectMapper);
    }

    public List<Game> listGames() {
        return library;
    }

    public RecommendationResponse recommend(RecommendationRequest request) {

        if (library.isEmpty()) {
            throw new IllegalStateException("No games loaded from anchor-games.json");
        }

        // 1️⃣ Pattern scoring
        Map<String, Double> patternScores =
                patternService.matchPatterns(request.input());

        // 2️⃣ Domain detection
        Set<String> detectedDomains =
                domainService.detectDomains(request.input());

        // 3️⃣ Apply recommendation-level hard filters
        List<Game> eligibleGames =
                gameFilter.applyRecommendationFilters(
                        library,
                        request.energy(),
                        detectedDomains
                );

        // 4️⃣ Score eligible games only
        List<RecommendationPick> scoredPicks = new ArrayList<>();

        for (Game game : eligibleGames) {

            double finalScore = RecommendationScorer.score(
                    game,
                    request,
                    patternScores,
                    detectedDomains
            );

            if (finalScore > 0) {
                String reasoning = RecommendationScorer.reasoning(
                        game,
                        request,
                        patternScores,
                        detectedDomains
                );

                scoredPicks.add(new RecommendationPick(
                        game,
                        reasoning,
                        (int) (finalScore * 100)
                ));
            }
        }

        // 5️⃣ Sort and return top 3
        List<RecommendationPick> topPicks = scoredPicks.stream()
                .sorted((a, b) -> Integer.compare(b.getScore(), a.getScore()))
                .limit(3)
                .collect(Collectors.toList());

        return new RecommendationResponse(topPicks);
    }

    private List<Game> loadLibrary(ObjectMapper objectMapper) {
        try (InputStream is =
                     getClass().getClassLoader()
                             .getResourceAsStream("anchor-games.json")) {

            if (is == null) {
                throw new IllegalStateException(
                        "anchor-games.json not found in src/main/resources"
                );
            }

            return objectMapper.readValue(
                    is,
                    new TypeReference<List<Game>>() {}
            );

        } catch (Exception e) {
            throw new IllegalStateException(
                    "Failed to load anchor-games.json",
                    e
            );
        }
    }
}

