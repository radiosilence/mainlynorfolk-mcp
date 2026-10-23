- **`completions` and `clear-cache` are subcommands, not flags.**
  `folk completions zsh` is what a hand reaches for, and what the sibling tools
  already accept; `--completions zsh` was neither. The server flags stay flags,
  because they configure the thing that runs rather than replacing it.
