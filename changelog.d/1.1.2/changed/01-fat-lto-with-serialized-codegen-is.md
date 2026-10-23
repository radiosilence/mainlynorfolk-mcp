- **Fat LTO with serialized codegen is the slowest possible build configuration.**
  `lto = true` and `codegen-units = 1` trigger whole-program optimization across
  the entire dependency tree in a single pass — CI builds measured 329s of pure
  `cargo build` per target. For an I/O-bound service that gains nothing measurable
  from aggressive optimization, thin LTO and parallel codegen units deliver the
  same binary behavior with dramatically faster builds. Switched to `lto = "thin"`
  and `codegen-units = 16`.
