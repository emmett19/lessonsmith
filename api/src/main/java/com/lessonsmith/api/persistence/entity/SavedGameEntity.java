package com.lessonsmith.api.persistence.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(
        name = "saved_games",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = {"user_id", "game_id"})
        }
)
public class SavedGameEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "game_id", nullable = false)
    private GameEntity game;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    public SavedGameEntity() {
    }

    public SavedGameEntity(UserEntity user, GameEntity game) {
        this.user = user;
        this.game = game;
    }

    @PrePersist
    public void prePersist() {
        if (this.createdAt == null) {
            this.createdAt = LocalDateTime.now();
        }
    }

    public Long getId() {
        return id;
    }

    public UserEntity getUser() {
        return user;
    }

    public GameEntity getGame() {
        return game;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public void setGame(GameEntity game) {
        this.game = game;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}