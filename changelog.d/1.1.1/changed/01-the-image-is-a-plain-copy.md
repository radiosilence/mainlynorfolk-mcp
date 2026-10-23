- **The image is a plain `COPY` onto `scratch` — no build stage, no package
  manager, at all.** CI compiles the static musl binary once in the workflow
  and this Dockerfile only copies it in; a bare `docker build .` requires
  `dist/` to already hold the binary, which is intentional — docker builds
  only ever happen in CI now, so nothing recompiles a binary CI already
  built. Same binary, no shell, nothing to patch, and it drops from a
  debian-slim base to roughly 20MB.
