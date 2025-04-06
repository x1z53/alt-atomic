#!/bin/bash

set -euo pipefail

BASIC_PACKAGES=(
  alt-gnome-desktop-wallpapers
  alt-gpgkeys
  apa
  apt-repo
  btop
  cassette
  eza
  fish
  fzf
  gdb
  gear
  gear-remotes-utils
  hasher
  hasher-priv
  i586-fasm
  keyd
  kitty
  neovim
  npm
  papers
  pinentry-gnome3
  planify
  ripgrep
  rnote
  rpm-utils
  showtime
  telegram-desktop
  texlive-dist
  resources
  thunderbird
  xclip
  yandex-browser-stable
  zoxide
)

apt-get install -y "${BASIC_PACKAGES[@]}"

PACKAGES_TO_REMOVE=(
  clapper
  dconf-editor
  file-roller
  firefox
  gnome-characters
  gnome-console
  gnome-maps
  gnome-shell-extensions
  gnome-software
  gnome-tour
  ptyxis
  virt-manager
  yelp
)

apt-get remove -y "${PACKAGES_TO_REMOVE[@]}"
