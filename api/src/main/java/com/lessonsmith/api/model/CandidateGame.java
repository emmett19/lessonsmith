package com.lessonsmith.api.model;

public class CandidateGame {
    private String gameId;
    private double weight;
    private String domain; // optional, can be null

    // getters and setters
    public String getGameId() { return gameId; }
    public void setGameId(String gameId) { this.gameId = gameId; }

    public double getWeight() { return weight; }
    public void setWeight(double weight) { this.weight = weight; }

    public String getDomain() { return domain; }
    public void setDomain(String domain) { this.domain = domain; }
}
