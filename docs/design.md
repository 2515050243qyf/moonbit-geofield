# Design Notes

`moonbit-geofield` keeps the public API small and package-local. The root package owns the concrete data types because users are expected to construct `GeoPoint`, inspect `Grid`, and pass `FieldSample` values across IO and analysis functions.

The first implementation covers deterministic, dependency-light formulas and data operations. Heavy models such as EGM, WMM, and IGRF are intentionally represented as future coefficient loaders instead of being embedded as generated source.

## Package Boundaries

- `types.mbt`: public records used across the library
- `math.mbt`: angle conversion, distance, interpolation helpers
- `gravity.mbt`: normal gravity and anomaly calculations
- `magnetic.mbt`: magnetic direction approximations
- `harmonics.mbt`: compact spherical harmonic evaluation
- `grid.mbt`: gridded sampling and profile extraction
- `io.mbt`: CSV and GeoJSON helpers

## Numerical Scope

The library favors explicit formulas and transparent units. Public function names include units where ambiguity is likely, for example `normal_gravity_mgal` and `free_air_correction_mgal`.
