package com.lessonsmith.api.controller;

import com.lessonsmith.api.dto.RecommendationRequest;
import com.lessonsmith.api.dto.RecommendationResponse;
import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.service.DatabaseGameService;
import com.lessonsmith.api.service.RecommendationService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class RecommendationController {

    private final RecommendationService recommendationService;
    private final DatabaseGameService databaseGameService;

    public RecommendationController(RecommendationService recommendationService,
                                    DatabaseGameService databaseGameService) {
        this.recommendationService = recommendationService;
        this.databaseGameService = databaseGameService;
    }

    @PostMapping("/recommend")
    public RecommendationResponse recommend(@RequestBody RecommendationRequest request) {
        return recommendationService.recommend(request);
    }

    @GetMapping("/games/all")
    public List<Game> getAllGames() {
        return databaseGameService.getAllGames();
    }
}