- **The CA bundle and cache directory both come from `gcr.io/distroless/static`
  rather than from any local build step**, so there's nothing to build to get
  them. `rustls-platform-verifier` needs a real system trust store on Linux —
  it does **not** fall back to the webpki roots compiled into the binary —
  confirmed by running the static binary on bare `scratch` with no cert file:
  it panics at `Client::new()` with "No CA certificates were loaded from the
  system" before making a single request.
