#!/bin/bash
set -euo pipefail

echo "::group:: ===$(basename "$0")==="

BASIC_PACKAGES=(
  systemd-ssh-agent
  ptyxis
)

apt-get install -y \
  "${BASIC_PACKAGES[@]}" \

echo "::endgroup::"