// services/authService.ts

import { api } from "./apiClient";
import { saveToken, logout as clearToken } from "./auth";

type LoginResponse = {
  token: string;
};

export async function login(email: string, password: string) {
  const response = await api.post<LoginResponse>("/api/auth/login", {
    email,
    password,
  });

  saveToken(response.token);

  return response;
}

export function logout() {
  clearToken();
}