#!/bin/bash

echo "::group:: ===$(basename "$0")==="

echo "rpm http://ftp.aides.space/repo/altlinux/Sisyphus x86_64 aides" >> /etc/apt/sources.list.d/alt.list

apt-get update

echo "::endgroup::"
