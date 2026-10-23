- **No image was ever published under the new name.** 1.0.0 was released while
  the repository was still `mainlynorfolk-cli`, so its images went to the
  `mainlynorfolk-cli` package and the rename that followed left
  `ghcr.io/radiosilence/mainlynorfolk-mcp:v1.0.0` referring to something that
  does not exist — a GHCR package does not follow its repository. Anything
  pinned to the correct-looking name could not pull it. This release exists to
  publish under the right one; the code is unchanged.
