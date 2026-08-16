/**
 * Main application entrypoint.
 */
export function main(): void {
  console.log("Welcome to agentic-oss-starter!");
}

if (import.meta.url === `file://${process.argv[1]}`) {
  main();
}
