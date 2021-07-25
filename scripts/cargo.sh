#!/bin/bash

set -eux

export OUTPUT="$2"
export CARGO_TARGET_DIR="$3"/target
export CARGO_HOME="${CARGO_TARGET_DIR}"/cargo-home

cargo build --manifest-path $1/Cargo.toml --release -p lockc && cp "$CARGO_TARGET_DIR"/release/fractal-gtk "$OUTPUT"
