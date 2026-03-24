package com.lessonsmith.api.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Game {

    private String id;
    private String name;
    private List<String> levels;
    private String bestFor;
    private String energy;
    private String domain;
    private String category;
    private boolean domainSpecific;
    private int classSizeMin;
    private int classSizeMax;

    // ✅ NEW FIELDS
    private String description;
    private String languageReason;
    private String energyReason;
    private List <String> howToRun;



    // Jackson no-arg constructor
    public Game() {}

    // Getters and setters
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public List<String> getLevels() { return levels; }
    public void setLevels(List<String> levels) { this.levels = levels; }

    public String getBestFor() { return bestFor; }
    public void setBestFor(String bestFor) { this.bestFor = bestFor; }

    public String getEnergy() { return energy; }
    public void setEnergy(String energy) { this.energy = energy; }

    public String getDomain() { return domain; }
    public void setDomain(String domain) { this.domain = domain; }

    public boolean isDomainSpecific(){ return domainSpecific; }
    public void setDomainSpecific(boolean domainSpecific) { this.domainSpecific = domainSpecific; }

    // ✅ NEW GETTERS & SETTERS
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getLanguageReason() { return languageReason; }
    public void setLanguageReason(String languageReason) { this.languageReason = languageReason; }

    public String getEnergyReason() { return energyReason; }
    public void setEnergyReason(String energyReason) { this.energyReason = energyReason; }

    public List <String> getHowToRun() { return howToRun; }
    public void setHowToRun(List <String> howToRun) {this.howToRun = howToRun; }

    public String getCategory(){ return category; }
    public void setCategory(String category){ this.category = category; }

    public int getClassSizeMin(){ return classSizeMin; }
    public void setClassSizeMin(int classSizeMin){ this.classSizeMin = classSizeMin; }

    public int getClassSizeMax(){ return classSizeMax; }
    public void setClassSizeMax(int classSizeMax){ this.classSizeMax = classSizeMax; }



    }

