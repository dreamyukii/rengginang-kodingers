#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# add repo 
curl -Lo /etc/yum.repos.d/hardware:razer-"${RELEASE}".repo https://download.opensuse.org/repositories/hardware:/razer/Fedora_"${RELEASE}"/hardware:razer.repo

# this installs a package from fedora repos
rpm-ostree install openrazer-daemon polychromatic  python3-openrazer jetbrains-mono-fonts-all fira-code-fonts langpacks-id breeze-gtk
