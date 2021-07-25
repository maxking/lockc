project(
  'lockc', 'rust',
  version: '0.1.0',
  license: 'Apache-2.0 AND GPL-2.0-or-later',
)

cargo = find_program('cargo', required: true)

lockc_prefix = get_option('prefix')
lockc_bindir = join_paths(lockc_prefix, get_option('bindir'))

btf_script = find_program('scripts/btf.sh')
libbpf_script = find_program('scripts/libbpf.sh')
cargo_script = find_program('scripts/cargo.sh')
test_script = find_program('scripts/test.sh')

cargo_manifests = files(
  'Cargo.toml',
)

subdir('src')

test(
  'cargo-test',
  test_script,
  args: meson.build_root(),
  workdir: meson.source_root(),
  timeout: 3000,
)
