# SHAE Gleam Web API

A web API written in Gleam.

## Features
- GET /api/items — list items
- POST /api/items — create item
- GET /api/items/:id — get item
- DELETE /api/items/:id — delete item
- Compiles to JavaScript or Erlang VM

## Install
```bash
./scripts/install.sh
# Or manually:
gleam build
gleam run
```

## Usage
```bash
gleam run
```

## Design
Follows SHAE Field Manual: warm paper #F2EEE5, ink #191712, oxide #B3341B, 0px radius, 1px borders.
