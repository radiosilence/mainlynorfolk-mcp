- **A stale `Cargo.lock` no longer reaches the image build.** `check` builds and
  tests with `--locked`, so a lockfile that has drifted from `Cargo.toml` — which
  a version bump does every time — fails in the pull request rather than in the
  Docker build, which is the only step that used `--locked` and so the only one
  that noticed.
