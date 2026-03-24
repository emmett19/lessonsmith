package com.lessonsmith.api.dto;

import java.util.List;

public record RecommendationRequest(
        String input,        // teacher question / goal
        String energy,       // low, medium, high
        String domain     // food, school, props, general, etc.

) { }

