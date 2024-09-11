#!/usr/bin/env bash
set -x
set -eo pipefail

podman rm -f $(podman ps -a | grep postgres | cut -d " " -f 1)
podman rm -f $(podman ps -a | grep redis | cut -d " " -f 1)
