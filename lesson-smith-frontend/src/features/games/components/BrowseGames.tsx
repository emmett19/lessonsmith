// src/features/games/components/BrowseGames.tsx
import React from "react";
import type { FilterRequest } from "../types";

interface BrowseGamesProps {
  filter: FilterRequest;
  setFilter: (f: FilterRequest) => void;
}

// Use exact backend enum names for levels
const levelOptions = [
  "CP", "CK", "ET1", "ET2", "PowerUp1", "PowerUp2",
  "CL", "PowerUp3", "JNCE", "THINK", "TALENT"
];

// Use exact backend categories
const categoryOptions = [
  "Q&A/Dialogue", "Vocab", "Roleplay", "Listening Comprehension", "Phonics"
];

const energyOptions = ["low", "medium", "high"];

export const BrowseGames: React.FC<BrowseGamesProps> = ({ filter, setFilter }) => {
  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => {
    const { name, value } = e.target;

    if (name === "classSize") {
      setFilter({ ...filter, classSize: value ? parseInt(value) : null });
    } else if (name === "categories") {
      setFilter({ ...filter, categories: value ? [value] : [] });
    } else {
      setFilter({ ...filter, [name]: value || null });
    }
  };

  return (
    <div style={{ display: "flex", gap: "1rem", marginBottom: "1rem" }}>
      <select name="level" value={filter.level || ""} onChange={handleChange}>
        <option value="">All Levels</option>
        {levelOptions.map(level => <option key={level} value={level}>{level}</option>)}
      </select>

      <select name="categories" value={filter.categories[0] || ""} onChange={handleChange}>
        <option value="">All Categories</option>
        {categoryOptions.map(cat => <option key={cat} value={cat}>{cat}</option>)}
      </select>

      <select name="energy" value={filter.energy || ""} onChange={handleChange}>
        <option value="">All Energy</option>
        {energyOptions.map(en => <option key={en} value={en}>{en}</option>)}
      </select>

      <input
        type="number"
        name="classSize"
        placeholder="Class Size"
        value={filter.classSize ?? ""}
        onChange={handleChange}
        min={1}
        style={{ width: 100 }}
      />
    </div>
  );
};