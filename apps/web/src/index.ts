import { AgenticAppConfig, createGreeting } from "@agentic/shared";

export const webConfig: AgenticAppConfig = {
  appName: "agentic-web",
  version: "0.1.0",
  environment: "development",
};

export function renderApp(): string {
  return `<div><h1>${webConfig.appName}</h1><p>${createGreeting("Web User")}</p></div>`;
}

console.log(
  `[Web App] Initialized: ${webConfig.appName} v${webConfig.version}`,
);
