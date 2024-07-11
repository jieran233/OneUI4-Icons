#!/bin/bash
SELF_DIR="$(dirname "$(readlink -f "$0")")"
TARGET_DIR="/usr/share/icons"

mkdir -p "$TARGET_DIR"
for _i in OneUI{,-dark,-light}; do
    echo "Install $_i to $TARGET_DIR"
    cp -dr --no-preserve=mode "$SELF_DIR/$_i" "$TARGET_DIR"
done