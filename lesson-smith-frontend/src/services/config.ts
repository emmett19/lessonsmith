export const API_BASE_URL =
  import.meta.env.VITE_API_BASE_URL?.toString() ?? "http://localhost:8080";

console.log("API_BASE_URL =", API_BASE_URL);
