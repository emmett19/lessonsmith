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
  const [energy, setEnergy] = useState<"low" | "medium" | "high">("medium");

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    onSubmit({
      input,
      energy,
    });
  };

  return (
    <form onSubmit={handleSubmit} style={{ marginBottom: 16 }}>
      <div style={{ marginBottom: 12 }}>
        <label style={{ display: "block", marginBottom: 6 }}>
          Target language
        </label>
        <input
          value={input}
          onChange={(e) => setInput(e.target.value)}
          required
          disabled={loading}
          placeholder='e.g. Can he swim?'
          style={{
            width: "100%",
            maxWidth: 360,
            padding: "8px 10px",
            borderRadius: 6,
            boxSizing: "border-box",
          }}
        />
      </div>

      <div style={{ marginTop: 8, marginBottom: 12 }}>
        <label style={{ marginRight: 8 }}>Energy:</label>
        <select
          value={energy}
          onChange={(e) => setEnergy(e.target.value as "low" | "medium" | "high")}
          disabled={loading}
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