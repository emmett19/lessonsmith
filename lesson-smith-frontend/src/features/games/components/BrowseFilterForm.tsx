// src/features/games/components/BrowseFilterForm.tsx
import React from "react";
import type { FilterRequest } from "../types";

interface BrowseFilterFormProps {
  filter: FilterRequest;
  setFilter: (f: FilterRequest) => void;
}

const levelOptions = [
  "CP", "CK", "ET1", "ET2", "PowerUp1", "PowerUp2",
  "CL", "PowerUp3", "JNCE", "THINK", "TALENT"
];

const categoryOptions = [
  "Q&A/Dialogue", "Vocab", "Roleplay", "Listening Comprehension", "Phonics"
];

const energyOptions = ["low", "medium", "high"];

export const BrowseFilterForm: React.FC<BrowseFilterFormProps> = ({ filter, setFilter }) => {
  const handleChange = (e: React.ChangeEvent<HTMLSelectElement | HTMLInputElement>) => {
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
    <form style={{ display: "flex", gap: 12, marginBottom: 16 }}>
      <select name="level" value={filter.level || ""} onChange={handleChange}>
        <option value="">All Levels</option>
        {levelOptions.map(l => <option key={l} value={l}>{l}</option>)}
      </select>

      <select name="categories" value={filter.categories[0] || ""} onChange={handleChange}>
        <option value="">All Categories</option>
        {categoryOptions.map(c => <option key={c} value={c}>{c}</option>)}
      </select>

      <select name="energy" value={filter.energy || ""} onChange={handleChange}>
        <option value="">All Energy</option>
        {energyOptions.map(e => <option key={e} value={e}>{e}</option>)}
      </select>

      <input
        type="number"
        name="classSize"
        placeholder="Class Size"
        value={filter.classSize ?? ""}
        onChange={handleChange}
        min={1}
        style={{ width: 120 }}
      />
    </form>
  );
};