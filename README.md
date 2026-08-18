# moonbit-geofield

MoonBit geophysical field toolkit for deterministic gravity, magnetic-field, grid, profile, and geospatial data workflows.

## Project positioning

`moonbit-geofield` is a dependency-light scientific-computing library for applications that need transparent formulas and small, composable data structures. It is useful for teaching, exploratory geophysics, regional field processing, and reproducible CLI pipelines. Approximate magnetic and harmonic models are explicitly labelled; the library does not claim navigation-grade accuracy or ship large authoritative coefficient tables.

## Core capabilities

- WGS84/Somigliana normal gravity, free-air and Bouguer corrections.
- Dipole magnetic declination, inclination, and vector components.
- Compact spherical-harmonic terms, normalization, and evaluation.
- Regular latitude/longitude grids with nearest, bilinear, focal, gradient, slope, aspect, Laplacian, resampling, and contour-ready operations.
- Profile extraction, distance accumulation, interpolation, filtering, detrending, robust summaries, and quality flags.
- CSV and GeoJSON export, sample validation, unit conversion, and local ENU coordinates.
- A runnable CLI demonstration and a measured native benchmark.

## Quick start

Requires the current stable MoonBit toolchain.

```bash
moon check --target all
moon test --target all
moon run cmd/main
```

Use the library from a MoonBit package through the module path:

```moonbit
import "2515050243qyf/moonbit-geofield" @geofield

let point = @geofield.GeoPoint::{ lat: 32.0, lon: 118.0, elevation_m: 25.0 }
let gravity = @geofield.normal_gravity_mgal(point.lat)
```

The tested API examples are in [`README.mbt.md`](README.mbt.md).

## CLI

`moon run cmd/main` prints a station calculation, a grid interpolation/profile example, and CSV output. It is intentionally dependency-free so a reviewer can run it immediately after cloning.

## Architecture

The root package owns public data types and the computational facade. Files are organized by responsibility: `gravity.mbt`, `magnetic.mbt`, `harmonics.mbt`, `grid*.mbt`, `profile_ops.mbt`, `filtering.mbt`, `geodesy.mbt`, `quality.mbt`, and `io.mbt`. The generated `pkg.generated.mbti` records the public interface. See [`docs/design.md`](docs/design.md) for numerical boundaries and data-flow notes.

## Benchmarks

Run:

```bash
moon run --target native cmd/bench
```

The benchmark reports the workload size, elapsed milliseconds, and a checksum produced at runtime. Timings are environment-dependent and are not presented as portable performance claims.

## Testing and quality

The test suite covers reference gravity values, vector invariants, harmonic edge cases, malformed grids, poles/date-line handling, missing values, filtering, profiles, units, CSV, and GeoJSON. Recommended local checks are:

```bash
moon fmt --check
moon info
moon check --deny-warn --target all
moon test --target all
moon build --target native
```

## CI

GitHub Actions installs the stable MoonBit toolchain on Linux, macOS, and Windows, then runs formatting, interface generation, strict checks, all-backend tests, native build, and CLI smoke coverage. A separate workflow runs the benchmark and stores its output as a build artifact.

## License

Apache-2.0. See [`LICENSE`](LICENSE).
