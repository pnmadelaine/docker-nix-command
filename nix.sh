#!/usr/bin/env bash

ARGS="$@"
docker run --rm --volume $(pwd):/mnt --user root nixos/nix bash -c "chown -R root /mnt ; cd /mnt ; HOME=/home nix --extra-experimental-features 'nix-command flakes' $ARGS ; chown -R $(id -u) /mnt"
