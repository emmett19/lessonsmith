package com.lessonsmith.api.importer;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.service.GameImportService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.io.InputStream;
import java.util.List;

@Component
public class GameImportRunner implements CommandLineRunner {

    private final ObjectMapper objectMapper;
    private final GameImportService gameImportService;

    public GameImportRunner(ObjectMapper objectMapper,
                            GameImportService gameImportService) {
        this.objectMapper = objectMapper;
        this.gameImportService = gameImportService;
    }

    @Override
    public void run(String... args) throws Exception {

        // 🔒 only run when explicitly triggered
        boolean shouldImport = false;
        for (String arg : args) {
            if (arg.equals("--import-games")) {
                shouldImport = true;
            }
        }

        if (!shouldImport) return;

        try (InputStream is = getClass().getClassLoader()
                .getResourceAsStream("anchor-games.json")) {

            if (is == null) {
                throw new IllegalStateException("anchor-games.json not found");
            }

            List<Game> games = objectMapper.readValue(
                    is,
                    new TypeReference<List<Game>>() {}
            );

            gameImportService.importGames(games);

            System.out.println("✅ Imported " + games.size() + " games into DB");
        }
    }
}