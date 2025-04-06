#!/bin/bash
set -euo pipefail

echo "::group:: ===$(basename "$0")==="

BASIC_PACKAGES=(
  kitty
  telegram-desktop
  pinentry-gnome3
  keyd
  showtime
  cassette
  gdb
  neovim
  npm
  fish
  zoxide
  eza
  yandex-browser-stable
  apt-repo
  alt-gnome-desktop-wallpapers
  xclip
  papers
  i586-fasm
  fzf
  ripgrep
  hasher
  gear
  btop
  apa
  gear-remotes-utils
  hasher-priv
  texlive-dist
  rnote
  rpm-utils
  alt-gpgkeys
  thunderbird
)

apt-get install -y "${BASIC_PACKAGES[@]}"

PACKAGES_TO_REMOVE=(
  ptyxis
  gnome-console
  gnome-tour
  clapper
  yelp
  gnome-maps
  gucharmap
  file-roller
  gnome-shell-extensions
  firefox
)

apt-get remove -y "${PACKAGES_TO_REMOVE[@]}"

echo "::endgroup::"
