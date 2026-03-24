package com.lessonsmith.api.controller;

import com.lessonsmith.api.dto.RecommendationRequest;
import com.lessonsmith.api.dto.RecommendationResponse;
import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.service.AllGamesService;
import com.lessonsmith.api.service.RecommendationService;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api")
public class RecommendationController {

    private final RecommendationService recommendationService;
    private final AllGamesService allGamesService;

    public RecommendationController(RecommendationService recommendationService, AllGamesService allGamesService) {
        this.recommendationService = recommendationService;
        this.allGamesService = allGamesService;
    }

    /**
     * Returns top recommended games based on teacher input, level, energy, and domain.
     */
    @PostMapping("/recommend")
    public RecommendationResponse recommend(@RequestBody RecommendationRequest request) {
        return recommendationService.recommend(request);
    }

    /**
     * Returns all games from the JSON.
     */
    @GetMapping("/games/all")
    public List<Game> getAllGames() throws IOException {
        return allGamesService.getAllGames();
    }
}
