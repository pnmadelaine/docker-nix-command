#!/usr/bin/env bash

docker run --rm --volume $(pwd):/mnt -it nixos/nix bash -c "git config --system --add safe.directory /mnt && cd /mnt && HOME=/home nix --extra-experimental-features 'nix-command flakes' $*"
