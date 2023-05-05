#!/bin/bash

echo "Install Dart Sass Embedded..."

# This is in Netlify's PATH.
BIN_DIR=/opt/build/repo/node_modules/.bin
DARTSASS_VERSION=1.62.1

mkdir -p $BIN_DIR

curl -LJO https://github.com/sass/dart-sass-embedded/releases/download/${DARTSASS_VERSION}/sass_embedded-${DARTSASS_VERSION}-linux-x64.tar.gz;

tar -xvf sass_embedded-${DARTSASS_VERSION}-linux-x64.tar.gz;

mv sass_embedded/dart-sass-embedded $BIN_DIR

rm -rf sass_embedded*;


echo "List Bin Dir..."



ls $BIN_DIR;

# Add read and execute permissions for the user running Hugo
chmod 755 dart-sass-embedded

dart-sass-embedded --version

echo "Building..."

hugo
