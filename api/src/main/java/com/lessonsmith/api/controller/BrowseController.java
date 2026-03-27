package com.lessonsmith.api.controller;

import com.lessonsmith.api.dto.FilterRequest;
import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.service.DatabaseGameService;
import com.lessonsmith.api.service.GameFilter;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping({"/api/browse"})
public class BrowseController {

    private final DatabaseGameService databaseGameService;
    private final GameFilter gameFilter;

    public BrowseController(DatabaseGameService databaseGameService, GameFilter gameFilter) {
        this.databaseGameService = databaseGameService;
        this.gameFilter = gameFilter;
    }

    @PostMapping
    public List<Game> browseGames(@RequestBody FilterRequest filter) {
        List<Game> allGames = databaseGameService.getAllGames();
        return gameFilter.applyBrowseFilters(allGames, filter);
    }
}