package com.lessonsmith.api.service;

import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.persistence.entity.GameEntity;
import com.lessonsmith.api.persistence.entity.GameLevelEntity;
import com.lessonsmith.api.persistence.entity.GameStepEntity;
import com.lessonsmith.api.persistence.repository.GameLevelRepository;
import com.lessonsmith.api.persistence.repository.GameRepository;
import com.lessonsmith.api.persistence.repository.GameStepRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GameImportService {

    private final GameRepository gameRepository;
    private final GameLevelRepository gameLevelRepository;
    private final GameStepRepository gameStepRepository;

    public GameImportService(GameRepository gameRepository,
                             GameLevelRepository gameLevelRepository,
                             GameStepRepository gameStepRepository) {
        this.gameRepository = gameRepository;
        this.gameLevelRepository = gameLevelRepository;
        this.gameStepRepository = gameStepRepository;
    }

    @Transactional
    public void importGames(List<Game> games) {
        for (Game game : games) {
            importSingleGame(game);
        }
    }

    private void importSingleGame(Game game) {
        GameEntity entity = gameRepository.findById(game.getId())
                .orElseGet(GameEntity::new);

        entity.setId(game.getId());
        entity.setName(game.getName());
        entity.setCategory(game.getCategory());
        entity.setEnergy(game.getEnergy());
        entity.setBestFor(game.getBestFor());
        entity.setDescription(game.getDescription());
        entity.setLanguageReason(game.getLanguageReason());
        entity.setEnergyReason(game.getEnergyReason());
        entity.setClassSizeMin(game.getClassSizeMin());
        entity.setClassSizeMax(game.getClassSizeMax());
        entity.setDomain(game.getDomain());
        entity.setDomainSpecific(game.isDomainSpecific());

        GameEntity savedGame = gameRepository.save(entity);

        replaceLevels(savedGame, game);
        replaceSteps(savedGame, game);
    }

    private void replaceLevels(GameEntity gameEntity, Game game) {
        gameLevelRepository.deleteByGame_Id(gameEntity.getId());

        if (game.getLevels() == null) {
            return;
        }

        for (String level : game.getLevels()) {
            GameLevelEntity levelEntity = new GameLevelEntity();
            levelEntity.setGame(gameEntity);
            levelEntity.setLevel(level);
            gameLevelRepository.save(levelEntity);
        }
    }

    private void replaceSteps(GameEntity gameEntity, Game game) {
        gameStepRepository.deleteByGame_Id(gameEntity.getId());

        if (game.getHowToRun() == null) {
            return;
        }

        for (int i = 0; i < game.getHowToRun().size(); i++) {
            GameStepEntity stepEntity = new GameStepEntity();
            stepEntity.setGame(gameEntity);
            stepEntity.setStepOrder(i + 1);
            stepEntity.setStepText(game.getHowToRun().get(i));
            gameStepRepository.save(stepEntity);
        }
    }
}