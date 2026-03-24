// src/components/Recommendations.tsx
import { useState } from "react";
import type { Recommendation } from "../types/Recommendation"; // This should work if the path is correct.

function Recommendations() {
  const [recommendations, setRecommendations] = useState<Recommendation[]>([]);

  const fetchRecommendations = () => {
    fetch("http://localhost:8080/api/recommendations", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        level: "PowerUp1",
        goal: "Improve Speaking",
        energy: "High",
        timeMinutes: 30,
        materials: ["Flashcards"],
        constraints: ["No loud noise"],
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        setRecommendations(data.recommendations);
      });
  };

  return (
    <div>
      <h2>Get Recommendations</h2>
      <button onClick={fetchRecommendations}>Recommend Games</button>

      {recommendations.length > 0 ? (
        recommendations.map((rec, index) => (
          <div key={index}>
            <h3>Game ID: {rec.gameId}</h3>
            <p>Variant ID: {rec.variantId}</p>
            <p>{rec.whyThisFits}</p>
          </div>
        ))
      ) : (
        <p>No recommendations available.</p>
      )}
    </div>
  );
}

export default Recommendations;
