import { useState } from "react";
import { login } from "../services/authService";

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

  return (
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        alignItems: "flex-end",
        gap: 8,
        width: 200, // 👈 KEY FIX (locks it to the right visually)
      }}
    >
      <form
        onSubmit={handleLogin}
        style={{
          width: "100%", // 👈 ensures inputs fill the container neatly
        }}
      >
        <div style={{ marginBottom: 8 }}>
          <input
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="Email"
            style={{
              width: "100%",
              padding: 6,
              boxSizing: "border-box", // 👈 prevents overflow weirdness
            }}
          />
        </div>

        <div style={{ marginBottom: 8 }}>
          <input
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="Password"
            type="password"
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
            width: "100%", // 👈 makes it align cleanly with inputs
          }}
        >
          Log in
        </button>
      </form>

      {message && (
        <p style={{ marginTop: 4, fontSize: 13 }}>{message}</p>
      )}
    </div>
  );
}