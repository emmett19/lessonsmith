package com.lessonsmith.api.persistence.repository;

import com.lessonsmith.api.persistence.entity.GameStepEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

public interface GameStepRepository extends JpaRepository<GameStepEntity, Long> {

    @Transactional
    void deleteByGame_Id(String gameId);
}