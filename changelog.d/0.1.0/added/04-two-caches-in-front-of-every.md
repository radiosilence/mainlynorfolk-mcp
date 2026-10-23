- **Two caches in front of every fetch, memory then disk.** A process-wide
  in-memory cache, bounded at 512 pages, makes a deep GraphQL query that
  revisits the same hub pages — the Child index, an artist's discography —
  free after the first visit. Behind it, a disk cache keyed by URL under the
  platform cache directory survives process exit. Past a 24-hour freshness
  window, requests revalidate conditionally (`If-None-Match`/
  `If-Modified-Since`) instead of refetching outright, and a stale copy is
  served rather than an error if the archive is briefly unreachable.
  `--no-cache` disables the disk layer only; the in-memory cache holds nothing
  across runs, so it has nothing stale to serve.
