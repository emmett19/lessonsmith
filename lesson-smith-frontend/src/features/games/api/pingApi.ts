import { api } from "../../../services/apiClient";

export function ping(signal?: AbortSignal) {
  return api.get<{ status: string }>("/api/ping", undefined, signal);
}
