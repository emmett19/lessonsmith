// src/App.tsx
import { useState, useEffect } from "react";
import RecommendationForm from "./features/games/components/RecommendationForm";
import GamesList from "./features/games/components/GamesList";
import { BrowseFilterForm } from "./features/games/components/BrowseFilterForm";
import type { Game, RecommendationRequest, RecommendationFormInput, FilterRequest } from "./features/games/types";
import { fetchRecommendations, fetchAllGames } from "./features/games/api/gamesApi";
import LoginForm from "./components/LoginForm";
import { saveGame } from "./services/savedGamesService";
import SavedGamesList from "./components/SavedGamesList";

export default function App() {
  const [results, setResults] = useState<Game[]>([]);
  const [selectedGame, setSelectedGame] = useState<Game | null>(null);
  const [allGames, setAllGames] = useState<Game[]>([]);
  const [showAllGames, setShowAllGames] = useState(false);
  const [loading, setLoading] = useState(false);
  const [loadingAllGames, setLoadingAllGames] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // New: Filter state for Browse mode
  const [filter, setFilter] = useState<FilterRequest>({
    level: null,
    categories: [],
    energy: null,
    classSize: null,
  });

  // Preload all games
  useEffect(() => {
    setLoadingAllGames(true);
    fetchAllGames()
      .then(games => setAllGames(games))
      .catch(err => {
        console.error(err);
        setError(err.message);
      })
      .finally(() => setLoadingAllGames(false));
  }, []);

async function handleSaveGame(gameId: string) {
  try {
    await saveGame(gameId);
    alert("Game saved!");
  } catch {
    alert("Login first to save games.");
  }
}

  const handleSubmit = async (formData: RecommendationFormInput) => {
    setLoading(true);
    setError(null);

    try {
      const backendRequest: RecommendationRequest = {
        input: formData.input,
        energy: formData.energy,
        domain: "general",
      };

      const picks = await fetchRecommendations(backendRequest);
      const mappedGames: Game[] = picks.map(pick => pick.game);

      setResults(mappedGames);
      setShowAllGames(false);
    } catch (err: any) {
      console.error(err);
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  const toggleAllGames = () => {
    setShowAllGames(prev => !prev);
    setResults([]);
  };

  // Helper: client-side filter for Browse mode
  const applyClientFilter = (game: Game, filter: FilterRequest) => {
    if (filter.level && !game.levels.includes(filter.level)) return false;
    if (filter.categories.length > 0 && !filter.categories.includes(game.category)) return false;
    if (filter.energy && game.energy !== filter.energy) return false;
    if (filter.classSize && (filter.classSize < game.classSizeMin || filter.classSize > game.classSizeMax)) return false;
    return true;
  };

  // Group games by category
  const groupGamesByCategory = (games: Game[]) => {
    const grouped = games.reduce((acc: Record<string, Game[]>, game) => {
      const category = game.category || "Uncategorized";
      if (!acc[category]) acc[category] = [];
      acc[category].push(game);
      return acc;
    }, {});

    Object.keys(grouped).forEach(cat => {
      grouped[cat].sort((a, b) => a.name.localeCompare(b.name));
    });

    return grouped;
  };

  const filteredGames = allGames.filter(game => applyClientFilter(game, filter));
  const groupedFilteredGames = groupGamesByCategory(filteredGames);

  const GameDetailModal = ({ game, onClose }: { game: Game; onClose: () => void }) => (
  <div
    style={{
      position: "fixed",
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      backgroundColor: "rgba(0,0,0,0.5)",
      display: "flex",
      justifyContent: "center",
      alignItems: "center",
      padding: 16,
      zIndex: 1000,
    }}
  >
    <div
      style={{
        backgroundColor: "white",
        borderRadius: 12,
        padding: 24,
        maxWidth: 500,
        width: "100%",
        maxHeight: "90%",
        overflowY: "auto",
        boxShadow: "0 4px 20px rgba(0,0,0,0.3)",
      }}
    >
      <h2 style={{ marginTop: 0 }}>{game.name}</h2>

      <div style={{ display: "flex", gap: 12, marginBottom: 12 }}>
        <span style={{ fontWeight: "bold" }}>Energy:</span> {game.energy}
        {game.bestFor && (
          <>
            <span style={{ fontWeight: "bold" }}>Best for:</span> {game.bestFor}
          </>
        )}
      </div>

      {game.description && (
        <div style={{ marginBottom: 16 }}>
          <h4>Description:</h4>
          <p style={{ marginTop: 4, lineHeight: 1.5 }}>{game.description}</p>
        </div>
      )}

      {game.howToRun && game.howToRun.length > 0 && (
        <div style={{ marginBottom: 16 }}>
          <h4>How to Run:</h4>
          <ol style={{ marginTop: 4, paddingLeft: 20, lineHeight: 1.5 }}>
            {game.howToRun.map((step, idx) => (
              <li key={idx}>{step}</li>
            ))}
          </ol>
        </div>
      )}

      <button
        onClick={onClose}
        style={{
          marginTop: 12,
          padding: "8px 16px",
          borderRadius: 6,
          border: "none",
          backgroundColor: "#007BFF",
          color: "white",
          cursor: "pointer",
          fontWeight: "bold",
        }}
      >
        Close
      </button>
    </div>
  </div>
);

 return (
  <div style={{ padding: 16 }}>
    <h1 style={{ marginBottom: 8 }}>LessonSmith</h1>

<p
  style={{
    marginTop: 0,
    marginBottom: 20,
    maxWidth: 520,
    lineHeight: 1.5,
    opacity: 0.85,
  }}
>
  Find the best ESL game for your lesson. Enter your target language or browse all games below.
</p>

<LoginForm />

<RecommendationForm onSubmit={handleSubmit} loading={loading} error={error} />

    <button
      onClick={toggleAllGames}
      style={{
        margin: "16px 0",
        padding: "8px 16px",
        borderRadius: 6,
        border: "none",
        backgroundColor: "#28A745",
        color: "white",
        cursor: "pointer",
        fontWeight: "bold",
      }}
      disabled={loadingAllGames}
    >
      {showAllGames ? "Hide All Games" : "Browse All Games"}
    </button>

      {/* Browse Mode */}
{showAllGames && (
  <div>
    <h2 style={{ marginBottom: 8 }}>Game Library</h2>
    <p style={{ marginTop: 0, marginBottom: 16, opacity: 0.8 }}>
      Filter by level, category, energy, or class size.
    </p>

    <div
      style={{
        border: "1px solid #ddd",
        borderRadius: 8,
        padding: 12,
        marginBottom: 20,
        backgroundColor: "#fafafa",
      }}
    >
      <BrowseFilterForm filter={filter} setFilter={setFilter} />
    </div>

    {filteredGames.length === 0 ? (
      <div style={{ marginTop: 12, opacity: 0.8 }}>
        No games match these filters. Try adjusting your selections.
      </div>
    ) : (
      Object.entries(groupedFilteredGames).map(([category, games]) => (
        <div key={category} style={{ marginBottom: 32 }}>
          <h2
  style={{
    borderBottom: "2px solid #ddd",
    paddingBottom: 6,
    fontSize: 36,
    fontWeight: 700,
    marginTop: 28,
    marginBottom: 12,
  }}
>
  {category}
</h2>

          <GamesList
            results={games}
            onSelectGame={(g) => setSelectedGame(g)}
           renderCard={(g, onClick) => (
  <div
    onClick={onClick}
    style={{
      border: "1px solid #ccc",
      padding: 12,
      marginBottom: 12,
      borderRadius: 8,
      cursor: "pointer",
      boxShadow: "1px 1px 4px rgba(0,0,0,0.1)",
    }}
  >
    <h3 style={{ margin: 0 }}>{g.name}</h3>

    <div style={{ marginTop: 6, fontSize: 14, opacity: 0.7 }}>
      Energy: {g.energy}
    </div>

    <button
      onClick={(e) => {
        e.stopPropagation();
        handleSaveGame(g.id);
      }}
      style={{ marginTop: 10 }}
    >
      Save Game
    </button>

    <div style={{ marginTop: 6, fontSize: 13, opacity: 0.6 }}>
      Tap for details
    </div>
  </div>
)}
          />
        </div>
      ))
    )}
  </div>
)}

      {/* Recommendation Mode */}
      {!showAllGames && results.length > 0 && (
        <GamesList
          results={results}
          onSelectGame={g => setSelectedGame(g)}
         renderCard={(g, onClick) => (
  <div
    onClick={onClick}
    style={{
      border: "1px solid #ccc",
      padding: 12,
      marginBottom: 12,
      borderRadius: 8,
      cursor: "pointer",
      boxShadow: "1px 1px 4px rgba(0,0,0,0.1)",
    }}
  >
    <h3 style={{ margin: 0 }}>{g.name}</h3>

    <div style={{ marginTop: 8, opacity: 0.8 }}>
      <div>{g.languageReason}</div>
      <div>{g.energyReason}</div>
    </div>

    <button
      onClick={(e) => {
        e.stopPropagation();
        handleSaveGame(g.id);
      }}
      style={{ marginTop: 10 }}
    >
      Save Game
    </button>
  </div>
)}
        /> 
      )}
      <SavedGamesList />
      {selectedGame && <GameDetailModal game={selectedGame} onClose={() => setSelectedGame(null)} />}
    </div>
  );
}