#!/bin/zsh -euo pipefail
cd `dirname $0`/..

iconutil --convert icns --output Helix.bundle/Contents/Resources/English\ -\ Helix.icns English.iconset
iconutil --convert icns --output Helix.bundle/Contents/Resources/Russian\ -\ Helix.icns Russian.iconset

touch Helix.bundle

sudo rm -rf /Library/Keyboard\ Layouts/Helix.bundle
sudo cp -r Helix.bundle /Library/Keyboard\ Layouts/