
# Output

```console
$ sh ./reproducible.sh
Bug Case 1
     Removed 23 files, 56.1KiB total
expected warning
    Checking a-dep v0.1.0 (/rust/tmp/clippy-no-deps/a-dep)
warning: you should consider adding a `Default` implementation for `A`
 --> a-dep/src/lib.rs:4:5
  |
4 | /     pub fn new() -> A {
5 | |         A {}
6 | |     }
  | |_____^
  |
  = help: for further information visit https://rust-lang.github.io/rust-clippy/master/index.html#new_without_default
  = note: `#[warn(clippy::new_without_default)]` on by default
help: try adding this
  |
3 + impl Default for A {
4 +     fn default() -> Self {
5 +         Self::new()
6 +     }
7 + }
  |

warning: `a-dep` (lib) generated 1 warning (run `cargo clippy --fix --lib -p a-dep` to apply 1 suggestion)
    Finished `dev` profile [unoptimized + debuginfo] target(s) in 0.13s
unexpected warning from a-dep
warning: you should consider adding a `Default` implementation for `A`
 --> a-dep/src/lib.rs:4:5
  |
4 | /     pub fn new() -> A {
5 | |         A {}
6 | |     }
  | |_____^
  |
  = help: for further information visit https://rust-lang.github.io/rust-clippy/master/index.html#new_without_default
  = note: `#[warn(clippy::new_without_default)]` on by default
help: try adding this
  |
3 + impl Default for A {
4 +     fn default() -> Self {
5 +         Self::new()
6 +     }
7 + }
  |

warning: `a-dep` (lib) generated 1 warning (run `cargo clippy --fix --lib -p a-dep` to apply 1 suggestion)
    Checking b-dep v0.1.0 (/rust/tmp/clippy-no-deps/b-dep)
    Finished `dev` profile [unoptimized + debuginfo] target(s) in 0.07s
Bug Case 2
     Removed 24 files, 102.4KiB total
expected no warning from a-dep
    Checking a-dep v0.1.0 (/rust/tmp/clippy-no-deps/a-dep)
    Checking b-dep v0.1.0 (/rust/tmp/clippy-no-deps/b-dep)
    Finished `dev` profile [unoptimized + debuginfo] target(s) in 0.15s
unexpected no warning
    Finished `dev` profile [unoptimized + debuginfo] target(s) in 0.01s
```
