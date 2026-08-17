import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { renderApp, webConfig } from "../dist/index.js";

describe("@agentic/web", () => {
  it("should have valid Web configuration", () => {
    assert.equal(webConfig.appName, "agentic-web");
  });

  it("should render HTML with greeting from shared package", () => {
    const html = renderApp();
    assert.ok(html.includes("agentic-web"));
    assert.ok(html.includes("Hello from @agentic/shared, Web User!"));
  });
});
