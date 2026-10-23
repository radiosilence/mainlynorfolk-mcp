- **`Roud -` is no longer stored as the reference number `-`.** The archive
  writes a bare dash where it has no number, and a dash stored as a Roud number
  looks like data while matching nothing — including through `Song.sameRoud`,
  which feeds it back into the archive's own search.
