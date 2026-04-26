package com.lessonsmith.api.persistence.repository;

import com.lessonsmith.api.persistence.entity.SavedGameEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface SavedGameRepository extends JpaRepository<SavedGameEntity, Long> {

    List<SavedGameEntity> findByUserEmail(String email);

    Optional<SavedGameEntity> findByUserEmailAndGameId(String email, String gameId);

    boolean existsByUserEmailAndGameId(String email, String gameId);

    void deleteByUserEmailAndGameId(String email, String gameId);
}