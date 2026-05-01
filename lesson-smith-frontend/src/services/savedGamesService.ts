import { api } from "./apiClient";
import type { SavedGame } from "../features/games/types";


export function getSavedGames() {
  return api.get<SavedGame[]>("/api/saved-games");
}

export function saveGame(gameId: string) {
  return api.post(`/api/saved-games/${gameId}`);
}

export function deleteSavedGame(gameId: string) {
  return api.delete(`/api/saved-games/${gameId}`);
}