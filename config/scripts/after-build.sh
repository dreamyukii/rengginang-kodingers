#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oueux pipefail
rpm-ostree cleanup -m && \
ln -sf /usr/bin/ld.bfd /etc/alternatives/ld && ln -sf /etc/alternatives/ld /usr/bin/ld && \
rm -f /etc/yum.repos.d/vscode.repo && \
rm -f /etc/yum.repos.d/docker-ce.repo && \
rm -f /etc/yum.repos.d/unityhub.repo && \
rm -f /etc/yum.repos.d/hardware:razer.repo 