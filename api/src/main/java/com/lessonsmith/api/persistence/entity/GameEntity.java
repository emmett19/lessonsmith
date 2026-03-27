package com.lessonsmith.api.persistence.entity;

import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "games")
public class GameEntity {

    @Id
    private String id;

    private String name;

    private String category;

    private String energy;

    @Column(name = "best_for")
    private String bestFor;

    @Column(columnDefinition = "text")
    private String description;

    @Column(name = "language_reason", columnDefinition = "text")
    private String languageReason;

    @Column(name = "energy_reason", columnDefinition = "text")
    private String energyReason;

    @Column(name = "class_size_min")
    private Integer classSizeMin;

    @Column(name = "class_size_max")
    private Integer classSizeMax;

    private String domain;

    @Column(name = "domain_specific")
    private Boolean domainSpecific;

    @OneToMany(mappedBy = "game", fetch = FetchType.LAZY)
    private List<GameLevelEntity> levels = new ArrayList<>();

    @OneToMany(mappedBy = "game", fetch = FetchType.LAZY)
    @OrderBy("stepOrder ASC")
    private List<GameStepEntity> steps = new ArrayList<>();

    public GameEntity() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getEnergy() {
        return energy;
    }

    public void setEnergy(String energy) {
        this.energy = energy;
    }

    public String getBestFor() {
        return bestFor;
    }

    public void setBestFor(String bestFor) {
        this.bestFor = bestFor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLanguageReason() {
        return languageReason;
    }

    public void setLanguageReason(String languageReason) {
        this.languageReason = languageReason;
    }

    public String getEnergyReason() {
        return energyReason;
    }

    public void setEnergyReason(String energyReason) {
        this.energyReason = energyReason;
    }

    public Integer getClassSizeMin() {
        return classSizeMin;
    }

    public void setClassSizeMin(Integer classSizeMin) {
        this.classSizeMin = classSizeMin;
    }

    public Integer getClassSizeMax() {
        return classSizeMax;
    }

    public void setClassSizeMax(Integer classSizeMax) {
        this.classSizeMax = classSizeMax;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public Boolean getDomainSpecific() {
        return domainSpecific;
    }

    public void setDomainSpecific(Boolean domainSpecific) {
        this.domainSpecific = domainSpecific;
    }

    public List<GameLevelEntity> getLevels() {
        return levels;
    }

    public void setLevels(List<GameLevelEntity> levels) {
        this.levels = levels;
    }

    public List<GameStepEntity> getSteps() {
        return steps;
    }

    public void setSteps(List<GameStepEntity> steps) {
        this.steps = steps;
    }
}