#!/bin/bash
YUBIKEY_CFG=~/.config/Yubico/u2f_keys

if [ ! -f "$YUBIKEY_CFG" ]; then
  pamu2fcfg -N > $YUBIKEY_CFG
fi
