package com.lessonsmith.api.service;

import com.lessonsmith.api.dto.FilterRequest;
import com.lessonsmith.api.model.Game;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class GameFilter {

    // 🔹 Used by RecommendationService
    public List<Game> applyRecommendationFilters(
            List<Game> games,
            String energy,
            Set<String> detectedDomains
    ) {
        return games.stream()
                .filter(game -> matchesDomain(game, detectedDomains))
                .filter(game -> matchesEnergy(game, energy))
                .toList();
    }

    // 🔹 Used by BrowseController (future)
    public List<Game> applyBrowseFilters(
            List<Game> games,
            FilterRequest filter
    ) {
        return games.stream()
                .filter(game -> matchesLevel(game, filter))
                .filter(game -> matchesCategory(game, filter))
                .filter(game -> matchesEnergy(game, filter.energy()))
                .filter(game -> matchesClassSize(game, filter))
                .toList();
    }

    private boolean matchesDomain(Game game, Set<String> detectedDomains) {
        if (!game.isDomainSpecific()) return true;
        if (detectedDomains == null || detectedDomains.isEmpty()) return false;

        return detectedDomains.contains(
                game.getDomain().trim().toLowerCase()
        );
    }

    private boolean matchesLevel(Game game, FilterRequest filter) {
        if (filter.level() == null) return true;
        return game.getLevels().contains(filter.level());
    }

    private boolean matchesCategory(Game game, FilterRequest filter) {
        if (filter.categories() == null || filter.categories().isEmpty())
            return true;

        return filter.categories().contains(game.getCategory());
    }

    private boolean matchesEnergy(Game game, String energy) {
        if (energy == null) return true;
        return game.getEnergy().equalsIgnoreCase(energy);
    }

    private boolean matchesClassSize(Game game, FilterRequest filter) {
        if (filter.classSize() == null) return true;

        int size = filter.classSize();

        return size >= game.getClassSizeMin()
                && size <= game.getClassSizeMax();
    }
}