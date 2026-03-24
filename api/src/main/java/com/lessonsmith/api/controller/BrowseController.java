package com.lessonsmith.api.controller;

import com.lessonsmith.api.dto.FilterRequest;
import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.service.GameFilter;
import com.lessonsmith.api.service.RecommendationService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/browse")
public class BrowseController {

    private final RecommendationService recommendationService; // for library access
    private final GameFilter gameFilter;

    public BrowseController(RecommendationService recommendationService,
                            GameFilter gameFilter) {
        this.recommendationService = recommendationService;
        this.gameFilter = gameFilter;
    }

    @PostMapping
    public List<Game> browseGames(@RequestBody FilterRequest filter) {
        // Get all games
        List<Game> allGames = recommendationService.listGames();

        // Apply hard filters
        return gameFilter.applyBrowseFilters(allGames, filter);
    }
}