
// Matching contracts

export interface RecommendationRequest {
  input: string;
  energy: string;
  domain: string;
}

export interface RecommendationResponse {
  recommendations: RecommendationPick[];
}

export interface RecommendationPick {
  game: Game;
  reasoning: string;
  score: number;
}

export interface Game {
  id: string;
  name: string;
  levels: string[];
  bestFor?: string;
  energy: string;
  domain?: string;
  description?: string;
  languageReason?: string;
  energyReason?: string;
  howToRun?: string[];
  category: string;
  classSizeMin: number;
  classSizeMax: number;
}

 export type SavedGame = {
  id: string;
  name: string;
  category?: string;
  energy?: string;
  bestFor?: string;
  savedAt: string;
};

// types/FilterInput.ts
export type FilterInput = {
  level?: string
  categories?: string[]
  energy?: "low" | "medium" | "high"
  classSize?: number
}

export interface FilterRequest {
  level: string | null;
  categories: string[];
  energy: string | null;
  classSize: number | null;
}

// Front End only
export interface RecommendationFormInput {
  input: string;
  energy: "low"|"medium"|"high";
}