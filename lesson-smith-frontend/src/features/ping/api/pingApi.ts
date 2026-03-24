import { api } from "../../../services/apiClient";

export type PingResponse = { status: string };

export function ping(signal?: AbortSignal) {
  return api.get<PingResponse>("/api/ping", undefined, signal);
}
