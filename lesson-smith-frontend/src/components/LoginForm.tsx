import { useState } from "react";
import { login, register } from "../services/authService";

type Props = {
  onLoginSuccess: () => void;
};

export default function LoginForm({ onLoginSuccess }: Props) {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [message, setMessage] = useState("");

  async function handleLogin(e: React.FormEvent) {
    e.preventDefault();
    setMessage("");

    try {
      await login(email, password);
      setMessage("Logged in!");
      onLoginSuccess();
    } catch (err) {
      setMessage("Login failed");
    }
  }

  async function handleRegister() {
    setMessage("");

    try {
      await register(email, password);
      await login(email, password);
      setMessage("Account created!");
      onLoginSuccess();
    } catch (err) {
      setMessage("Could not create account");
    }
  }

  return (
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        alignItems: "flex-end",
        gap: 8,
        width: 200,
      }}
    >
      <form
        onSubmit={handleLogin}
        style={{
          width: "100%",
        }}
      >
        <div style={{ marginBottom: 8 }}>
          <input
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="Email"
            required
            style={{
              width: "100%",
              padding: 6,
              boxSizing: "border-box",
            }}
          />
        </div>

        <div style={{ marginBottom: 8 }}>
          <input
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="Password"
            type="password"
            required
            style={{
              width: "100%",
              padding: 6,
              boxSizing: "border-box",
            }}
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
            width: "100%",
          }}
        >
          Log in
        </button>

        <button
          type="button"
          onClick={handleRegister}
          style={{
            padding: "6px 12px",
            borderRadius: 6,
            border: "1px solid #ccc",
            backgroundColor: "white",
            color: "#333",
            cursor: "pointer",
            width: "100%",
            marginTop: 8,
          }}
        >
          Create account
        </button>
      </form>

      {message && (
        <p style={{ marginTop: 4, fontSize: 13 }}>{message}</p>
      )}
    </div>
  );
}