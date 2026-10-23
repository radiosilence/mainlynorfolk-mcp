- **A concurrency cap of 4** across every request, so a single GraphQL query
  fanning out into many page loads can't turn into a burst against a
  hand-maintained static site.
