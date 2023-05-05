#!/bin/bash

echo "Installing Dart Sass Embedded..."

# This is in Netlify's PATH.
BIN_DIR=/opt/build/repo/node_modules/.bin
DARTSASS_VERSION=1.62.1

mkdir -p $BIN_DIR

curl -LJO https://github.com/sass/dart-sass-embedded/releases/download/${DARTSASS_VERSION}/sass_embedded-${DARTSASS_VERSION}-linux-x64.tar.gz;

tar -xvf sass_embedded-${DARTSASS_VERSION}-linux-x64.tar.gz;

export PATH=$PATH:$PWD/sass_embedded/src 

chmod 755 sass_embedded/dart-sass-embedded

mv sass_embedded/dart-sass-embedded $BIN_DIR

rm -rf sass_embedded*;

echo "List Bin Dir..."

ls $BIN_DIR;

echo "Building..."

hugo
