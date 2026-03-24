// src/features/games/components/GamesList.tsx
import type { JSX } from "react";
import type { Game } from "../types";

interface Props<T extends Game> {
  results: T[];
  onSelectGame?: (game: T) => void;
  renderCard?: (game: T, onClick: () => void) => JSX.Element;
}

export default function GamesList<T extends Game>({
  results,
  onSelectGame,
  renderCard,
}: Props<T>) {
  return (
    <div>
      <h2>Games</h2>
      <ul style={{ padding: 0, listStyle: "none" }}>
        {results.map((g) => {
          const handleClick = () => onSelectGame?.(g);

          if (renderCard) return <li key={g.id}>{renderCard(g, handleClick)}</li>;

          // Default rendering
          return (
            <li
              key={g.id}
              onClick={handleClick}
              style={{
                border: "1px solid #ccc",
                padding: 12,
                marginBottom: 12,
                borderRadius: 8,
                cursor: onSelectGame ? "pointer" : "default",
              }}
            >
              <strong>{g.name}</strong> — {g.energy} — {g.bestFor} — [
              {g.levels.join(", ")}]
            </li>
          );
        })}
      </ul>
    </div>
  );
}