import { API_BASE_URL } from "./config";

type HttpMethod = "GET" | "POST" | "PUT" | "PATCH" | "DELETE";

export class ApiError extends Error {
  status: number;
  url: string;
  bodyText?: string;

  constructor(message: string, status: number, url: string, bodyText?: string) {
    super(message);
    this.name = "ApiError";
    this.status = status;
    this.url = url;
    this.bodyText = bodyText;
  }
}

function buildUrl(path: string, query?: Record<string, string | number | boolean | undefined>) {
  const url = new URL(path, API_BASE_URL);

  if (query) {
    for (const [k, v] of Object.entries(query)) {
      if (v === undefined) continue;
      url.searchParams.set(k, String(v));
    }
  }

  return url.toString();
}

async function request<TResponse>(
  method: HttpMethod,
  path: string,
  options?: {
    query?: Record<string, string | number | boolean | undefined>;
    body?: unknown;
    headers?: Record<string, string>;
    signal?: AbortSignal;
  }
): Promise<TResponse> {
  const url = buildUrl(path, options?.query);

  const res = await fetch(url, {
    method,
    headers: {
      ...(options?.body ? { "Content-Type": "application/json" } : {}),
      ...(options?.headers ?? {}),
    },
    body: options?.body ? JSON.stringify(options.body) : undefined,
    signal: options?.signal,
  });

  // Handle empty responses (204, etc.)
  if (res.status === 204) {
    return undefined as TResponse;
  }

  const contentType = res.headers.get("content-type") ?? "";
  const isJson = contentType.includes("application/json");

  if (!res.ok) {
    const bodyText = await res.text().catch(() => undefined);
    throw new ApiError(`API request failed: ${method} ${url}`, res.status, url, bodyText);
  }

  if (isJson) return (await res.json()) as TResponse;

  // Fallback for text
  return (await res.text()) as unknown as TResponse;
}

// Friendly helpers
export const api = {
  get: <T>(path: string, query?: Record<string, string | number | boolean | undefined>, signal?: AbortSignal) =>
    request<T>("GET", path, { query, signal }),

  post: <T>(path: string, body?: unknown, signal?: AbortSignal) =>
    request<T>("POST", path, { body, signal }),

  put: <T>(path: string, body?: unknown, signal?: AbortSignal) =>
    request<T>("PUT", path, { body, signal }),

  patch: <T>(path: string, body?: unknown, signal?: AbortSignal) =>
    request<T>("PATCH", path, { body, signal }),

  delete: <T>(path: string, signal?: AbortSignal) =>
    request<T>("DELETE", path, { signal }),
};
