package com.lessonsmith.api.persistence.repository;

import com.lessonsmith.api.persistence.entity.GameLevelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

public interface GameLevelRepository extends JpaRepository<GameLevelEntity, Long> {

    @Transactional
    void deleteByGame_Id(String gameId);
}