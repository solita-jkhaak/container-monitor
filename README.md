# Container Monitor

Run `btop` in an Alpine container to monitor the host.

## Requirements

- Podman
- [just](https://just.systems/)

## Usage

Run `just` to list the available recipes:

- `just pull` downloads the container image.
- `just build` builds the monitor image.
- `just run` builds and launches `btop`.

The container runs with privileged access and mounts host system paths to
display host metrics.
