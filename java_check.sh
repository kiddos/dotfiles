#!/usr/bin/env sh

if [ ! -d $HOME/.local/dependency-check ]; then
  echo "downloading dependency check..."
  VERSION=$(curl -s https://jeremylong.github.io/DependencyCheck/current.txt)
  curl -Ls "https://github.com/jeremylong/DependencyCheck/releases/download/v$VERSION/dependency-check-$VERSION-release.zip" --output $HOME/.local/dependency-check.zip
  unzip $HOME/.local/dependency-check.zip -d $HOME/.local/dependency-check
fi

$HOME/.local/dependency-check/dependency-check/bin/dependency-check.sh --out . --scan .
