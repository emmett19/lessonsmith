import type { RecommendationRequest, RecommendationPick } from "../types";
import type { Game } from "../types";

/**
 * Fetch recommended games based on teacher input
 */
export async function fetchRecommendations(
  request: RecommendationRequest
): Promise<RecommendationPick[]> {
  console.log("Sending recommendation request:", request);

  const res = await fetch("http://localhost:8080/api/recommend", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(request),
  });

  if (!res.ok) {
    const text = await res.text();
    console.error("Backend error response:", text);
    throw new Error(`Failed to fetch recommendations: ${text}`);
  }

  const data = await res.json();
  console.log("Received from backend (recommendations):", data);

  if (Array.isArray(data)) return data;
  if (data.recommendations && Array.isArray(data.recommendations))
    return data.recommendations;

  throw new Error("Unexpected backend response format");
}

/**
 * Fetch all games from the backend
 */
export async function fetchAllGames(): Promise<Game[]> {
  console.log("Fetching all games from backend");

  const res = await fetch("http://localhost:8080/api/games/all", {
    method: "GET",
    headers: { "Content-Type": "application/json" },
  });

  if (!res.ok) {
    const text = await res.text();
    console.error("Backend error response:", text);
    throw new Error(`Failed to fetch all games: ${text}`);
  }

  const data: Game[] = await res.json();
  console.log("Received from backend (all games):", data);
  return data;
}