- **Builds run on every PR; only `main` pushes publish.** A broken Dockerfile
  now fails before merge instead of after — the image build, lint, format and
  test jobs all run per-PR, and only pushing to the registry is gated on
  `main`.
