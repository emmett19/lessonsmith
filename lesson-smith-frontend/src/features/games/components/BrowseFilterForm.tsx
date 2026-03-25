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
    <form
      style={{
        display: "flex",
        flexDirection: "column",
        gap: 12,
        marginBottom: 16,
      }}
    >
      <div>
        <label style={{ display: "block", marginBottom: 4 }}>Level</label>
        <select
          name="level"
          value={filter.level || ""}
          onChange={handleChange}
          style={{ width: "100%", padding: 8, boxSizing: "border-box" }}
        >
          <option value="">All Levels</option>
          {levelOptions.map((l) => (
            <option key={l} value={l}>
              {l}
            </option>
          ))}
        </select>
      </div>

      <div>
        <label style={{ display: "block", marginBottom: 4 }}>Category</label>
        <select
          name="categories"
          value={filter.categories[0] || ""}
          onChange={handleChange}
          style={{ width: "100%", padding: 8, boxSizing: "border-box" }}
        >
          <option value="">All Categories</option>
          {categoryOptions.map((c) => (
            <option key={c} value={c}>
              {c}
            </option>
          ))}
        </select>
      </div>

      <div>
        <label style={{ display: "block", marginBottom: 4 }}>Energy</label>
        <select
          name="energy"
          value={filter.energy || ""}
          onChange={handleChange}
          style={{ width: "100%", padding: 8, boxSizing: "border-box" }}
        >
          <option value="">All Energy</option>
          {energyOptions.map((e) => (
            <option key={e} value={e}>
              {e}
            </option>
          ))}
        </select>
      </div>

      <div>
        <label style={{ display: "block", marginBottom: 4 }}>Class Size</label>
        <input
          type="number"
          name="classSize"
          placeholder="Any class size"
          value={filter.classSize ?? ""}
          onChange={handleChange}
          min={1}
          style={{ width: "100%", padding: 8, boxSizing: "border-box" }}
        />
      </div>
    </form>
  );
};