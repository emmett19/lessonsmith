package com.lessonsmith.api.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import java.io.InputStream;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class DomainService {

    private final ObjectMapper objectMapper;

    // Map<DomainName, Set<Keywords>>
    private Map<String, Set<String>> domainKeywords = new HashMap<>();

    public DomainService(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    @PostConstruct
    public void init() {
        this.domainKeywords = loadDomains();
        System.out.println("Loaded domains: " + domainKeywords.keySet());
    }

    /**
     * Detect which domains are present in the input text.
     * @param input Teacher's target language input
     * @return set of domain names detected
     */
    public Set<String> detectDomains(String input) {
        if (input == null || input.isBlank()) {
            return Set.of();
        }

        // Normalize: lowercase, remove punctuation except spaces
        String normalized = input.toLowerCase().replaceAll("[^a-z ]", " ");
        Set<String> tokens = Arrays.stream(normalized.split("\\s+"))
                .filter(token -> !token.isBlank())
                .collect(Collectors.toSet());

        Set<String> detected = new HashSet<>();

        for (Map.Entry<String, Set<String>> entry : domainKeywords.entrySet()) {
            String domain = entry.getKey();
            Set<String> keywords = entry.getValue();

            // --- Check multi-word keywords (spaces in keyword)
            for (String keyword : keywords) {
                if (keyword.contains(" ") && normalized.contains(keyword)) {
                    detected.add(domain);
                    break;
                }
            }

            // --- Check single-word keywords (token equality or safe plural match)
            for (String token : tokens) {
                String singular = normalizePluralSafely(token);
                for (String keyword : keywords) {
                    if (!keyword.contains(" ") && (keyword.equals(token) || keyword.equals(singular))) {
                        detected.add(domain);
                        break;
                    }
                }
            }
        }

        return detected;
    }

    /**
     * Only normalize obvious plurals:
     * - ies -> y
     * - es -> remove (unless ending with 'ics')
     * - s -> remove (unless ending with 'ics')
     */
    private String normalizePluralSafely(String word) {
        if (word.endsWith("ies") && word.length() > 3) {
            return word.substring(0, word.length() - 3) + "y";
        }
        if (word.endsWith("es") && word.length() > 2 && !word.endsWith("ics")) {
            return word.substring(0, word.length() - 2);
        }
        if (word.endsWith("s") && word.length() > 1 && !word.endsWith("ics")) {
            return word.substring(0, word.length() - 1);
        }
        return word;
    }

    /**
     * Load domains from domains.json in resources
     */
    private Map<String, Set<String>> loadDomains() {
        try (InputStream is = new ClassPathResource("domains.json").getInputStream()) {
            Map<String, List<String>> raw = objectMapper.readValue(is,
                    new TypeReference<>() {});

            // Lowercase everything and convert to Set for faster lookup
            return raw.entrySet().stream()
                    .collect(Collectors.toMap(
                            Map.Entry::getKey,
                            e -> e.getValue().stream()
                                    .map(String::toLowerCase)
                                    .collect(Collectors.toSet())
                    ));
        } catch (Exception e) {
            throw new RuntimeException("Failed to load domains.json", e);
        }
    }
}
