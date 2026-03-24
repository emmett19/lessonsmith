package com.lessonsmith.api.service;

import java.util.Locale;

/**
 * Utility class for safely parsing string inputs into Level enums.
 * Handles shorthands and common abbreviations used in teacher input.
 */
public class LevelUtils {

    /**
     * Safely parse a string to a Level enum.
     * Handles shorthand like "ET" -> ET1, "PowerUp" -> PowerUp1, etc.
     *
     * @param input The input string from teacher or test
     * @return Level enum
     * @throws IllegalArgumentException if input is null, blank, or invalid
     */
    public static Level parseLevel(String input) {
        if (input == null || input.isBlank()) {
            throw new IllegalArgumentException("Level cannot be null or blank");
        }

        input = input.strip().toUpperCase(Locale.ROOT);

        // Handle common shorthands / defaults
        return switch (input) {
            case "ET" -> Level.ET1; // default ET shorthand to ET1
            case "POWERUP" -> Level.PowerUp1; // default PowerUp shorthand
            case "POWERUP1" -> Level.PowerUp1;
            case "POWERUP2" -> Level.PowerUp2;
            case "POWERUP3" -> Level.PowerUp3;
            case "CP" -> Level.CP;
            case "CK" -> Level.CK;
            case "ET1" -> Level.ET1;
            case "ET2" -> Level.ET2;
            case "CL" -> Level.CL;
            case "JNCE" -> Level.JNCE;
            case "THINK" -> Level.THINK;
            case "TALENT" -> Level.TALENT;
            default -> {
                // Attempt exact enum match (case-insensitive)
                try {
                    yield Level.valueOf(input);
                } catch (IllegalArgumentException e) {
                    throw new IllegalArgumentException("Invalid level input: " + input);
                }
            }
        };
    }
}
