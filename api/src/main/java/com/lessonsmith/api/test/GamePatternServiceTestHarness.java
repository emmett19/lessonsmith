package com.lessonsmith.api.test;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lessonsmith.api.service.DomainService;
import com.lessonsmith.api.service.GamePatternService;

import java.util.Map;
import java.util.Set;

public class GamePatternServiceTestHarness {

    public static void main(String[] args) {

        try {

            ObjectMapper mapper = new ObjectMapper();

            DomainService domainService = new DomainService(mapper);
            domainService.init();

            GamePatternService patternService = new GamePatternService();
            patternService.loadPatterns();

            System.out.println("=== DOMAIN & PATTERN TEST HARNESS ===\n");

            String[] testInputs = new String[]{

                    // Should trigger binary-cue-response
                    "Can he swim?",
                    "What can she do?",
                    "I can jump.",

                    // Should trigger restaurant-role-play (food domain)
                    "Does he like pizza?",
                    "I like mango.",

                    // Should trigger hidden-word-or-choice
                    "Is it a cat or a dog?",
                    "It's a tiger.",

                    // Should trigger guess-who-descriptive-deduction
                    "Is he wearing a hat?",
                    "Are they wearing a jacket?",

                    // Should trigger correct-the-teacher fallback
                    "This sentence is wrong"
            };

            for (String input : testInputs) {

                System.out.println("Input: " + input);

                Set<String> domains = domainService.detectDomains(input);
                System.out.println("Detected domains: " + domains);

                Map<String, Double> patternScores = patternService.matchPatterns(input);
                System.out.println("Pattern scores: " + patternScores);

                System.out.println();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
