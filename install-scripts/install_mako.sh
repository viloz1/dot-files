#!/bin/bash

git clone https://github.com/emersion/mako.git
cd mako
meson build
ninja -C build
sudo mv ./build/mako /usr/bin/
cd ../
rm -rf ./mako
