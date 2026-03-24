package com.lessonsmith.api.model;

import java.util.List;
import java.util.regex.Pattern;

public class RegexPatternEntry {

    // Raw regex string from JSON
    private String pattern;

    // Compiled regex (not from JSON)
    private Pattern compiledPattern;

    private List<CandidateGame> candidateGames;
    private String outputType;
    private String energy;

    // ===== Raw pattern (used by Jackson) =====
    public String getPattern() {
        return pattern;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    // ===== Compiled pattern (set in service) =====
    public Pattern getCompiledPattern() {
        return compiledPattern;
    }

    public void setCompiledPattern(Pattern compiledPattern) {
        this.compiledPattern = compiledPattern;
    }

    // ===== Candidate Games =====
    public List<CandidateGame> getCandidateGames() {
        return candidateGames;
    }

    public void setCandidateGames(List<CandidateGame> candidateGames) {
        this.candidateGames = candidateGames;
    }

    // ===== Output Type =====
    public String getOutputType() {
        return outputType;
    }

    public void setOutputType(String outputType) {
        this.outputType = outputType;
    }

    // ===== Energy =====
    public String getEnergy() {
        return energy;
    }

    public void setEnergy(String energy) {
        this.energy = energy;
    }
}

