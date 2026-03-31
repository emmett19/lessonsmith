package com.lessonsmith.api.persistence.repository;

import com.lessonsmith.api.persistence.entity.GameEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRepository extends JpaRepository<GameEntity, String> {
}