#!/bin/bash

set -eux

CLANG=${CLANG:-clang}

cargo libbpf build --clang-path "${CLANG}"
cargo libbpf gen
