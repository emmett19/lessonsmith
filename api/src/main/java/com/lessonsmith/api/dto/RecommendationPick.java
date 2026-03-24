package com.lessonsmith.api.dto;

import com.lessonsmith.api.model.Game;

public record RecommendationPick(
        Game game,
        String reasoning,
        int score

        // new field for numeric score
) {

    public int getScore() {
        return score;
    }
}

