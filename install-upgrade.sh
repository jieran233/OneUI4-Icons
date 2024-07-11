#!/bin/bash
SELF_DIR="$(dirname "$(readlink -f "$0")")"
TARGET_DIR="/usr/share/icons"

mkdir -p "$TARGET_DIR"
for _i in OneUI{,-dark,-light}; do
    _from="$SELF_DIR/$_i"
    _to="$TARGET_DIR/$_i"
    echo "Uninstall old version of $_i in $TARGET_DIR"
    rm -rf "${_to:?}/"*
    echo "Install $_i to $TARGET_DIR"
    cp -dr --no-preserve=mode "$SELF_DIR/$_i" "$TARGET_DIR"
done