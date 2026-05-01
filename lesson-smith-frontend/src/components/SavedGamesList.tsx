import type { SavedGame } from "../features/games/types";

type Props = {
  savedGames: SavedGame[];
  onDeleteGame: (id: string) => void;
};

export default function SavedGamesList({ savedGames, onDeleteGame }: Props) {
  return (
    <div style={{ marginTop: 30 }}>
      <h2>Saved Games</h2>

      {savedGames.length === 0 && <p>No saved games yet.</p>}

      {savedGames.map((g) => (
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
            onClick={() => onDeleteGame(g.id)}
            style={{ marginTop: 6 }}
          >
            Remove
          </button>
        </div>
      ))}
    </div>
  );
}