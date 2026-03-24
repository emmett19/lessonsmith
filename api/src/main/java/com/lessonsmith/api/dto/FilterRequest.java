package com.lessonsmith.api.dto;
import java.util.List;


public record FilterRequest(
        String level,
        List<String> categories,
        String energy,
        Integer classSize
) {}