package com.lessonsmith.api.persistence.repository;

import com.lessonsmith.api.persistence.entity.GameEntity;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GameRepository extends JpaRepository<GameEntity, String> {

    @Override
    @EntityGraph(attributePaths = {"levels", "steps"})
    List<GameEntity> findAll();
}