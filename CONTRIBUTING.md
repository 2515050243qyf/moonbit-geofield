# Contributing

This repository is prepared for a MoonBit hackathon submission and is currently maintained by the repository owner.

## Development

Run the same checks used by CI before committing:

```bash
moon fmt --check
moon info
moon check --deny-warn
moon test
moon run cmd/main
```

## Commit Style

Keep commits small and descriptive. Prefer scopes such as:

- `feat:` for new library behavior
- `test:` for coverage
- `docs:` for README and design notes
- `ci:` for workflow updates
- `chore:` for metadata

## Numerical Changes

When changing formulas, document the units and expected numerical range. Add tests with explicit tolerances rather than relying on exact floating-point equality.
