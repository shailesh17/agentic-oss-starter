import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { apiConfig, getApiStatus } from "../dist/index.js";

describe("@agentic/api", () => {
  it("should have valid API configuration", () => {
    assert.equal(apiConfig.appName, "agentic-api");
    assert.equal(apiConfig.version, "0.1.0");
  });

  it("should return API status and greeting from shared package", () => {
    const status = getApiStatus();
    assert.equal(status.status, "ok");
    assert.equal(status.greeting, "Hello from @agentic/shared, API Consumer!");
  });
});
