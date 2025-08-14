# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.2] - 2025-08-14

### Added

- `entrypoint` now also used in the `Dockerfile` itself.

### Fixed

- Pin debian release (for building) to "bookworm". [#5](https://github.com/koppor/cpdfsqueeze-action/issues/5)

### Changed

- Using "$@" for parameter parsing [#6](https://github.com/koppor/cpdfsqueeze-action/pulls/6)

## [1.0.1] - 2024-03-11

### Fixed

- Fixed reference to underlying alpine image

## 1.0.0 - 2021-04-18

Initial public release

[Unreleased]: https://github.com/koppor/cpdfsqueeze-action/compare/1.0.2...edge
[1.0.2]: https://github.com/koppor/cpdfsqueeze-action/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/koppor/cpdfsqueeze-action/compare/1.0.0...1.0.1
