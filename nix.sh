#!/usr/bin/env bash

ARGS="$@"
docker run --rm --volume $(pwd):/mnt nixos/nix bash -c "git config --system --add safe.directory /mnt && cd /mnt && HOME=/home nix --extra-experimental-features 'nix-command flakes' $ARGS"
