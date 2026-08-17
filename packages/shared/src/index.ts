export interface AgenticAppConfig {
  appName: string;
  version: string;
  environment: "development" | "production" | "test";
}

export function createGreeting(name: string): string {
  return `Hello from @agentic/shared, ${name}!`;
}
