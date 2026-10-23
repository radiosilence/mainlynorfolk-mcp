# mainlynorfolk-mcp — the folk song archive as an MCP server

# What CI checks: workflows, the changelog, format, lint with warnings as errors, tests.
check:
    actionlint
    python3 -m unittest scripts/test_changelog.py
    python3 scripts/changelog.py --lint
    cargo fmt --all -- --check
    cargo clippy --all-targets --locked -- -D warnings
    cargo test --locked

# Format
fmt:
    cargo fmt --all

# Write CHANGELOG.md from the fragments in changelog.d/. `--stdout` prints it instead.
changelog *args:
    python3 scripts/changelog.py {{args}}

# Open the release PR: `just release patch|minor|major`, or an exact version.
# Merging it publishes the image and the GitHub release; tags are never pushed by hand.
release version *args:
    scripts/release.sh {{version}} {{args}}
