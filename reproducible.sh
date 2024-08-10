rustup toolchain install nightly-2024-08-10 --profile minimal --component clippy
export RUSTUP_TOOLCHAIN=nightly-2024-08-10

cargo -V

echo Bug Case 1

cargo clean
echo expected warning
cargo clippy --no-deps --manifest-path ./a-dep/Cargo.toml
echo unexpected warning from a-dep
cargo clippy --no-deps --manifest-path ./b-dep/Cargo.toml

echo Bug Case 2

cargo clean
echo expected no warning from a-dep
cargo clippy --no-deps --manifest-path ./b-dep/Cargo.toml
echo unexpected no warning
cargo clippy --no-deps --manifest-path ./a-dep/Cargo.toml
