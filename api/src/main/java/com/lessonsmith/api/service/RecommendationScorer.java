package com.lessonsmith.api.service;

import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.dto.RecommendationRequest;

import java.util.Map;
import java.util.Set;

public class RecommendationScorer {

    /**
     * Compute final weighted score for a game given a request.
     * @param game the game
     * @param request the recommendation request
     * @param patternScores map of gameId → pattern match score
     * @param detectedDomains set of domains detected in the input
     * @return weighted final score (0–1)
     */
    public static double score(Game game, RecommendationRequest request,
                               Map<String, Double> patternScores,
                               Set<String> detectedDomains) {

        double pattern = calculatePatternScore(game, patternScores);
        double domain = calculateDomainScore(game, detectedDomains);
        double energy = calculateEnergyScore(game, request.energy());

        return calculateFinalScore(pattern, domain, energy);
    }

    private static double calculatePatternScore(Game game, Map<String, Double> patternScores) {
        return patternScores.getOrDefault(game.getId(), 0.0);
    }

    private static double calculateDomainScore(Game game, Set<String> detectedDomains) {
        if (game.getDomain() == null || game.getDomain().isBlank()) return 0.0;

        String gameDomainNormalized = game.getDomain().trim().toLowerCase();
        if (detectedDomains.contains(gameDomainNormalized)) {
            return 1.0;
        }
        return 0.0;
    }

    private static double calculateEnergyScore(Game game, String targetEnergy) {
        if (game.getEnergy() == null || targetEnergy == null) {
            return 0.0;
        }

        String gameEnergy = game.getEnergy().trim().toLowerCase();
        String requestedEnergy = targetEnergy.trim().toLowerCase();

        if (gameEnergy.equals(requestedEnergy)) {
            return 1.0; // perfect match
        }

        // Medium is flexible
        if ("medium".equals(requestedEnergy) || "medium".equals(gameEnergy)) {
            return 0.7;
        }

        return 0.0; // Low vs High mismatch
    }

    private static double calculateFinalScore(double pattern, double domain, double energy) {
        return 0.7 * pattern + 0.3 * energy + 0.1 * domain;
    }

    /**
     * Optional: generate reasoning string for logging/debugging.
     */
    public static String reasoning(Game game, RecommendationRequest request,
                                   Map<String, Double> patternScores,
                                   Set<String> detectedDomains) {
        double pattern = calculatePatternScore(game, patternScores);
        double domain = calculateDomainScore(game, detectedDomains);
        double energy = calculateEnergyScore(game, request.energy());

        return String.format("Pattern: %.2f, Energy: %.2f, DomainScore: %.2f",
                pattern, energy, domain);
    }
}