package com.lessonsmith.api.test;

import com.lessonsmith.api.dto.FilterRequest;
import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.service.GameFilter;
import com.lessonsmith.api.service.RecommendationService;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.List;

public class BrowseTest {

    public static void main(String[] args) throws Exception {

        // 1️⃣ Load library manually
        ObjectMapper objectMapper = new ObjectMapper();
        RecommendationService recommendationService = new RecommendationService(
                objectMapper,
                null,    // patternService not needed for browse
                null,    // domainService not needed
                new GameFilter()
        );

        List<Game> allGames = recommendationService.listGames();

        // 2️⃣ Prepare filter
        FilterRequest filter = new FilterRequest(
                "CK",
                List.of("Vocab"),
                "medium",
                12
        );

        // 3️⃣ Apply browse filters
        GameFilter gameFilter = new GameFilter();
        List<Game> filteredGames = gameFilter.applyBrowseFilters(allGames, filter);

        // 4️⃣ Print results
        System.out.println("Filtered games:");
        for (Game game : filteredGames) {
            System.out.println(game.getName() + " | " + game.getCategory() +
                    " | Levels: " + game.getLevels() +
                    " | Energy: " + game.getEnergy() +
                    " | ClassSize: " + game.getClassSizeMin() + "-" + game.getClassSizeMax());
        }

        System.out.println("Total: " + filteredGames.size() + " game(s)");
    }
}