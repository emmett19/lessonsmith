package com.lessonsmith.api.service;

import com.lessonsmith.api.dto.*;
import com.lessonsmith.api.model.Game;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class RecommendationService {

    private final DatabaseGameService databaseGameService;
    private final GamePatternService patternService;
    private final DomainService domainService;
    private final GameFilter gameFilter;

    public RecommendationService(DatabaseGameService databaseGameService,
                                 GamePatternService patternService,
                                 DomainService domainService,
                                 GameFilter gameFilter) {
        this.databaseGameService = databaseGameService;
        this.patternService = patternService;
        this.domainService = domainService;
        this.gameFilter = gameFilter;
    }

    public List<Game> listGames() {
        return databaseGameService.getAllGames();
    }

    public RecommendationResponse recommend(RecommendationRequest request) {

        List<Game> library = databaseGameService.getAllGames();

        if (library.isEmpty()) {
            throw new IllegalStateException("No games loaded from database");
        }

        Map<String, Double> patternScores =
                patternService.matchPatterns(request.input());

        Set<String> detectedDomains =
                domainService.detectDomains(request.input());

        List<Game> eligibleGames =
                gameFilter.applyRecommendationFilters(
                        library,
                        request.energy(),
                        detectedDomains
                );

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

        List<RecommendationPick> topPicks = scoredPicks.stream()
                .sorted((a, b) -> Integer.compare(b.getScore(), a.getScore()))
                .limit(3)
                .collect(Collectors.toList());

        return new RecommendationResponse(topPicks);
    }
}