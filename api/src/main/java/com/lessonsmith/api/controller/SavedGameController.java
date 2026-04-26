package com.lessonsmith.api.controller;

import com.lessonsmith.api.persistence.entity.SavedGameEntity;
import com.lessonsmith.api.service.SavedGameService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/saved-games")
public class SavedGameController {

    private final SavedGameService savedGameService;

    public SavedGameController(SavedGameService savedGameService) {
        this.savedGameService = savedGameService;
    }

    @PostMapping("/{gameId}")
    public ResponseEntity<?> saveGame(
            @PathVariable String gameId,
            Authentication authentication
    ) {
        String email = authentication.getName();

        savedGameService.saveGame(email, gameId);

        return ResponseEntity.ok(Map.of(
                "message", "Game saved successfully",
                "gameId", gameId
        ));
    }

    @GetMapping
    public ResponseEntity<?> getSavedGames(Authentication authentication) {
        String email = authentication.getName();

        List<SavedGameEntity> savedGames = savedGameService.getSavedGames(email);

        return ResponseEntity.ok(
                savedGames.stream()
                        .map(saved -> Map.of(
                                "id", saved.getGame().getId(),
                                "name", saved.getGame().getName(),
                                "category", saved.getGame().getCategory(),
                                "energy", saved.getGame().getEnergy(),
                                "bestFor", saved.getGame().getBestFor(),
                                "savedAt", saved.getCreatedAt()
                        ))
                        .toList()
        );
    }

    @DeleteMapping("/{gameId}")
    public ResponseEntity<?> unsaveGame(
            @PathVariable String gameId,
            Authentication authentication
    ) {
        String email = authentication.getName();

        savedGameService.unsaveGame(email, gameId);

        return ResponseEntity.ok(Map.of(
                "message", "Game removed from saved games",
                "gameId", gameId
        ));
    }
}