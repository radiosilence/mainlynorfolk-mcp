- **The pass-through accessors on `Archive`.** Loaders already fetched through
  the page loader and called the parsers directly, so `song()`, `artist()`,
  `album()`, `page()` and the index readers existed only for the CLI. What
  remains is what an API call actually is here: the two `search.php` endpoints,
  which are POSTs rather than paths, and the paths themselves.

