import { useEffect, useState } from "react";
import { getSavedGames, deleteSavedGame } from "../services/savedGamesService";

type SavedGame = {
  id: string;
  name: string;
  category?: string;
  energy?: string;
  bestFor?: string;
  savedAt: string;
};

export default function SavedGamesList() {
  const [games, setGames] = useState<SavedGame[]>([]);
  const [error, setError] = useState("");

  async function loadGames() {
    try {
      const data = await getSavedGames();
      setGames(data);
    } catch {
      setError("Login to view saved games");
    }
  }

  async function handleDelete(id: string) {
    try {
      await deleteSavedGame(id);
      setGames((prev) => prev.filter((g) => g.id !== id));
    } catch {
      alert("Failed to remove game");
    }
  }

  useEffect(() => {
    loadGames();
  }, []);

  return (
    <div style={{ marginTop: 30 }}>
      <h2>Saved Games</h2>

      {error && <p>{error}</p>}

      {games.length === 0 && !error && <p>No saved games yet.</p>}

      {games.map((g) => (
        <div
          key={g.id}
          style={{
            border: "1px solid #ccc",
            padding: 10,
            marginBottom: 10,
            borderRadius: 8,
          }}
        >
          <strong>{g.name}</strong>

          {g.bestFor && (
            <div style={{ fontSize: 13, opacity: 0.7 }}>
              {g.bestFor}
            </div>
          )}

          <button
            onClick={() => handleDelete(g.id)}
            style={{ marginTop: 6 }}
          >
            Remove
          </button>
        </div>
      ))}
    </div>
  );
}