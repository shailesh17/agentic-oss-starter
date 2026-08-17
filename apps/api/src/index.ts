import { AgenticAppConfig, createGreeting } from "@agentic/shared";

export const apiConfig: AgenticAppConfig = {
  appName: "agentic-api",
  version: "0.1.0",
  environment: "development",
};

export function getApiStatus(): { status: string; greeting: string } {
  return {
    status: "ok",
    greeting: createGreeting("API Consumer"),
  };
}

console.log(
  `[API Service] Initialized: ${apiConfig.appName} v${apiConfig.version}`,
);
console.log(`[API Service] ${createGreeting("Backend Agent")}`);
