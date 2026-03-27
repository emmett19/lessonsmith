package com.lessonsmith.api.persistence.mapper;

import com.lessonsmith.api.model.Game;
import com.lessonsmith.api.persistence.entity.GameEntity;
import com.lessonsmith.api.persistence.entity.GameLevelEntity;
import com.lessonsmith.api.persistence.entity.GameStepEntity;

public class GameMapper {

    public static Game toApiModel(GameEntity entity) {
        Game game = new Game();
        game.setId(entity.getId());
        game.setName(entity.getName());
        game.setCategory(entity.getCategory());
        game.setEnergy(entity.getEnergy());
        game.setBestFor(entity.getBestFor());
        game.setDomain(entity.getDomain());
        game.setDomainSpecific(Boolean.TRUE.equals(entity.getDomainSpecific()));
        game.setDescription(entity.getDescription());
        game.setLanguageReason(entity.getLanguageReason());
        game.setEnergyReason(entity.getEnergyReason());
        game.setClassSizeMin(entity.getClassSizeMin() == null ? 0 : entity.getClassSizeMin());
        game.setClassSizeMax(entity.getClassSizeMax() == null ? 0 : entity.getClassSizeMax());

        game.setLevels(
                entity.getLevels().stream()
                        .map(GameLevelEntity::getLevel)
                        .toList()
        );

        game.setHowToRun(
                entity.getSteps().stream()
                        .map(GameStepEntity::getStepText)
                        .toList()
        );

        return game;
    }
}