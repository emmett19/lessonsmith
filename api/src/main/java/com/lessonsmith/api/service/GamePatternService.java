package com.lessonsmith.api.service;

import com.lessonsmith.api.model.CandidateGame;
import com.lessonsmith.api.model.RegexPatternEntry;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import jakarta.annotation.PostConstruct;

import java.io.InputStream;
import java.util.*;
import java.util.regex.Pattern;

@Service
public class GamePatternService {

    private List<RegexPatternEntry> patterns = new ArrayList<>();

    @PostConstruct
    public void loadPatterns() {
        try {
            ObjectMapper mapper = new ObjectMapper();
            InputStream is = getClass().getResourceAsStream("/game-patterns.json");
            List<RegexPatternEntry> entries = mapper.readValue(is, new TypeReference<List<RegexPatternEntry>>() {});

            // Compile regex Pattern objects
            for (RegexPatternEntry entry : entries) {
                entry.setCompiledPattern(Pattern.compile(entry.getPattern(), Pattern.CASE_INSENSITIVE));
            }

            this.patterns = entries;
            System.out.println("Loaded " + patterns.size() + " game patterns.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<RegexPatternEntry> getPatterns() {
        return patterns;
    }

    /**
     * Match input against all patterns.
     * Returns a map of gameId -> highest weight across all matching patterns.
     */
    public Map<String, Double> matchPatterns(String input) {
        Map<String, Double> scores = new HashMap<>();

        if (input == null || input.isEmpty()) return scores;

        String trimmedInput = input.trim(); // <-- trim leading/trailing whitespace

        for (RegexPatternEntry entry : patterns) {

            if (entry.getCompiledPattern().matcher(trimmedInput).matches()) { // use trimmed input
                for (CandidateGame game : entry.getCandidateGames()) {
                    double score = game.getWeight();
                    scores.merge(game.getGameId(), score, Math::max);
                }
            }
        }

        return scores;
    }
}



