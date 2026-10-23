- **`--browser` implies `--graphiql`, which implies `--graphql`.** It previously
  *required* `--graphiql` and errored without it, which meant spelling out three
  flags to mean one thing. Asking for a surface now asks for what it needs:
  opening a browser at the IDE means serving the IDE, which means serving the
  `/graphql` it talks to. Matches how `caldav-cli` and `fastmail-cli` already
  behave.
