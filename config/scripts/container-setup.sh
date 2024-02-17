#!/usr/bin/env bash
# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oueux pipefail

# enable docker and podman socket
systemctl enable docker.socket && systemctl enable podman.socket 