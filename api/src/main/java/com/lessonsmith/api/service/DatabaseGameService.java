package com.lessonsmith.api.service;

import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.persistence.mapper.GameMapper;
import com.lessonsmith.api.persistence.repository.GameRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DatabaseGameService {

    private final GameRepository gameRepository;

    public DatabaseGameService(GameRepository gameRepository) {
        this.gameRepository = gameRepository;
    }

    public List<Game> getAllGames() {
        return gameRepository.findAll().stream()
                .map(GameMapper::toApiModel)
                .toList();
    }
}