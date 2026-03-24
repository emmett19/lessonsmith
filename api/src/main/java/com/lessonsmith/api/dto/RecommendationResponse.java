 package com.lessonsmith.api.dto;

import java.util.List;

public record RecommendationResponse(
        List<RecommendationPick> recommendations
) {}

