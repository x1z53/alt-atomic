#!/bin/bash

set -euo pipefail

BASIC_PACKAGES=(
  alt-gnome-desktop-wallpapers
  apa
  apt-repo
  btop
  cassette
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
  planify
  ripgrep
  rnote
  rpm-utils
  showtime
  telegram-desktop
  fonts-ttf-google-noto-emoji
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
  gnome-characters
  gnome-console
  gnome-logs
  gnome-maps
  gnome-session-xsession
  gnome-shell-extension-appindicator
  gnome-shell-extension-dash-to-dock
  gnome-shell-extensions
  gnome-software
  gnome-text-editor
  gnome-tour
  ptyxis
  virt-manager
  yelp
)

apt-get remove -y "${PACKAGES_TO_REMOVE[@]}"
