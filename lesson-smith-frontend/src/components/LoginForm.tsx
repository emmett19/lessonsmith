import { useState } from "react";
import { login } from "../services/authService";

export default function LoginForm() {
  const [email, setEmail] = useState("fresh123@example.com");
  const [password, setPassword] = useState("password123");
  const [message, setMessage] = useState("");

  async function handleLogin(e: React.FormEvent) {
    e.preventDefault();
    setMessage("");

    try {
      await login(email, password);
      setMessage("Logged in!");
    } catch (err) {
      setMessage("Login failed");
    }
  }

  return (
    <div
      style={{
        marginBottom: 20,
        padding: 12,
        border: "1px solid #ccc",
        borderRadius: 8,
        maxWidth: 400,
      }}
    >
      <h3 style={{ marginTop: 0 }}>Login</h3>

      <form onSubmit={handleLogin}>
        <div style={{ marginBottom: 8 }}>
          <input
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="Email"
            style={{ width: "100%", padding: 6 }}
          />
        </div>

        <div style={{ marginBottom: 8 }}>
          <input
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="Password"
            type="password"
            style={{ width: "100%", padding: 6 }}
          />
        </div>

        <button
          type="submit"
          style={{
            padding: "6px 12px",
            borderRadius: 6,
            border: "none",
            backgroundColor: "#007BFF",
            color: "white",
            cursor: "pointer",
          }}
        >
          Log in
        </button>
      </form>

      {message && (
        <p style={{ marginTop: 8, fontSize: 14 }}>{message}</p>
      )}
    </div>
  );
}