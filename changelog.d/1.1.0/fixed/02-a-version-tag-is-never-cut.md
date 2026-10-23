- **A version tag is never cut without an image behind it.** `publish` now waits
  for the image builds as well as the tarballs. Previously they ran in parallel,
  so v1.0.2 got a GitHub release and no container image at all — and an
  auto-updater polling releases will happily pin one of those.
