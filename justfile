image := "alpine:latest"

_default:
    just --list

pull: 
    podman pull {{ image }}

build: pull
    podman build --build-arg IMAGE={{ image }} -t monitor .

run: build
    mkdir -p btop-config
    podman run -ti --rm \
        --privileged \
        --network=host \
        --pid=host \
        -e TERM=xterm-256color \
        -v /proc:/host/proc:ro \
        -v /:/host/root:ro \
        -v "{{justfile_directory()}}/btop-config:/root/.config/btop" \
        monitor
