package com.lessonsmith.api.service;

import com.lessonsmith.api.persistence.entity.GameEntity;
import com.lessonsmith.api.persistence.entity.SavedGameEntity;
import com.lessonsmith.api.persistence.entity.UserEntity;
import com.lessonsmith.api.persistence.repository.GameRepository;
import com.lessonsmith.api.persistence.repository.SavedGameRepository;
import com.lessonsmith.api.persistence.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SavedGameService {

    private final SavedGameRepository savedGameRepository;
    private final UserRepository userRepository;
    private final GameRepository gameRepository;

    public SavedGameService(
            SavedGameRepository savedGameRepository,
            UserRepository userRepository,
            GameRepository gameRepository
    ) {
        this.savedGameRepository = savedGameRepository;
        this.userRepository = userRepository;
        this.gameRepository = gameRepository;
    }

    @Transactional
    public void saveGame(String email, String gameId) {
        UserEntity user = userRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("User not found"));

        GameEntity game = gameRepository.findById(gameId)
                .orElseThrow(() -> new RuntimeException("Game not found"));

        if (savedGameRepository.existsByUserEmailAndGameId(email, gameId)) {
            return;
        }

        savedGameRepository.save(new SavedGameEntity(user, game));
    }

    @Transactional(readOnly = true)
    public List<SavedGameEntity> getSavedGames(String email) {
        return savedGameRepository.findByUserEmail(email);
    }

    @Transactional
    public void unsaveGame(String email, String gameId) {
        savedGameRepository.deleteByUserEmailAndGameId(email, gameId);
    }
}