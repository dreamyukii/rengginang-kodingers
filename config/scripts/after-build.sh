#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oueux pipefail

# image name and ld symlink
sed -i '/^PRETTY_NAME/s/Kinoite/Kodingers/' /usr/lib/os-release && \
ln -sf /usr/bin/ld.bfd /etc/alternatives/ld && ln -sf /etc/alternatives/ld /usr/bin/ld