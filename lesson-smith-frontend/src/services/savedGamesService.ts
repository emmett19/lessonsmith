import { api } from "./apiClient";

type SavedGame = {
  id: string;
  name: string;
  category?: string;
  energy?: string;
  bestFor?: string;
  savedAt: string;
};

export function getSavedGames() {
  return api.get<SavedGame[]>("/api/saved-games");
}

export function saveGame(gameId: string) {
  return api.post(`/api/saved-games/${gameId}`);
}

export function deleteSavedGame(gameId: string) {
  return api.delete(`/api/saved-games/${gameId}`);
}