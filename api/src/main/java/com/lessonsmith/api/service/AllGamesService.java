package com.lessonsmith.api.service;

import com.lessonsmith.api.model.Game;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service
public class AllGamesService {

    private final ObjectMapper objectMapper;

    public AllGamesService(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    /**
     * Loads all games from the JSON file.
     */
    public List<Game> getAllGames() throws IOException {
        InputStream is = getClass().getClassLoader().getResourceAsStream("anchor-games.json");
        if (is == null) {
            throw new IOException("games.json file not found in resources folder");
        }
        return objectMapper.readValue(is, new TypeReference<List<Game>>() {});
    }
}
