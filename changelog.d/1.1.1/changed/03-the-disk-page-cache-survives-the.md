- **The disk page cache survives the move to `scratch`.** `scratch` has no
  shell to `mkdir` a cache directory and no `/etc/passwd` to resolve `HOME`
  against, which would make `dirs::cache_dir()` return `None` and silently
  stop caching altogether. `/home/nonroot` from `distroless/static:nonroot` is
  a real, writable directory, re-owned to this image's uid and mounted as
  `XDG_CACHE_HOME`, so the cache keeps working exactly as it does today — this
  matters because mainlynorfolk.info and waterwaysongs.info are
  hand-maintained volunteer sites with no published rate limit, and losing the
  cache silently means hammering them on every request.
