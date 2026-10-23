- **Linux release binaries now come from the image build, not a separate
  compile.** `build-binaries` and `build-image` were each compiling a linux
  amd64 binary — one gnu, one musl — every push. Worse, `build-image` uploaded
  its musl binary as a raw file while `create-release` only ever attached
  `*.tar.gz`, so the musl binaries were built and then silently discarded:
  release v1.1.1 shipped only darwin and a stale-format linux x86_64 asset,
  and linux arm64 had no release binary at all. `build-binaries` no longer
  builds linux; `build-image` now packages the musl binary it already builds
  into the same tarball format as before and uploads that. Net effect: one
  fewer compile per push, the musl binaries reach releases instead of being
  thrown away, and linux arm64 gets a release binary for the first time. The
  linux x86_64 asset keeps its filename but is now the statically linked musl
  binary — strictly more portable than the previous glibc build, and the same
  binary the published container images already run.
