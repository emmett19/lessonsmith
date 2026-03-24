import { useEffect, useState } from "react";
import { ping } from "../api/pingApi";

export default function PingCheck() {
  const [status, setStatus] = useState("loading...");

  useEffect(() => {
    console.log("PingCheck mounted -> sending GET /api/ping");
    console.log("Calling /api/ping...");


    const controller = new AbortController();

    ping(controller.signal)
      .then((res) => {
        console.log("Ping success:", res);
        setStatus(res.status);
      })
      .catch((e: unknown) => {
        console.error("Ping failed:", e);
        setStatus(e instanceof Error ? e.message : "error");
      });

    return () => controller.abort();
  }, []);

  return <div>Ping: {status}</div>;
}
