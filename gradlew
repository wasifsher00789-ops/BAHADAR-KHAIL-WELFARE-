#!/bin/sh
set -e
VER=8.7
BASE="$HOME/.gradle/wrapper/dists/gradle-$VER-bin"
if [ ! -x "$BASE/gradle-$VER/bin/gradle" ]; then
  mkdir -p "$BASE"
  curl -fsSL "https://services.gradle.org/distributions/gradle-$VER-bin.zip" -o "$BASE/gradle.zip"
  unzip -q -o "$BASE/gradle.zip" -d "$BASE"
fi
exec "$BASE/gradle-$VER/bin/gradle" "$@"
