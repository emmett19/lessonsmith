// src/features/games/components/RecommendationForm.tsx
import { useState } from "react";
import type { RecommendationFormInput } from "../types";

interface Props {
  onSubmit: (formData: RecommendationFormInput) => void;
  loading: boolean;
  error: string | null;
}

export default function RecommendationForm({ onSubmit, loading, error }: Props) {
  const [input, setInput] = useState("");
  const [energy, setEnergy] = useState<"low" | "medium" | "high">("medium"); // NEW

 const handleSubmit = (e: React.FormEvent) => {
  e.preventDefault();
  onSubmit({
    input,   // target language
    energy,  // only scoring factor now
  });
};
  return (
    <form onSubmit={handleSubmit} style={{ marginBottom: 16 }}>
      <div>
        <label>Target Language:</label>
        <input
          value={input}
          onChange={(e) => setInput(e.target.value)}
          required
          disabled={loading}
          style={{ marginLeft: 8 }}
        />
      </div>

     {/* Level dropdown removed */}

<div style={{ marginTop: 8 }}>
  <label>Energy:</label>
  <select
    value={energy}
    onChange={(e) => setEnergy(e.target.value as "low" | "medium" | "high")}
    disabled={loading}
    style={{ marginLeft: 8 }}
  >
    <option value="low">Low</option>
    <option value="medium">Medium</option>
    <option value="high">High</option>
  </select>
</div>
      <button type="submit" disabled={loading} style={{ marginTop: 12 }}>
        {loading ? "Finding Games..." : "Find Games"}
      </button>

      {error && <div style={{ color: "red", marginTop: 8 }}>{error}</div>}
    </form>
  );
}