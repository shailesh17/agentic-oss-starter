import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { createGreeting } from "../dist/index.js";

describe("@agentic/shared", () => {
  it("should format greeting correctly", () => {
    const result = createGreeting("World");
    assert.equal(result, "Hello from @agentic/shared, World!");
  });
});
