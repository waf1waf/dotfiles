#!/bin/bash

pushd /tmp

sudo git clone https://github.com/ggreer/the_silver_searcher.git
cd the_silver_searcher
sudo ./build.sh
sudo make install
cd ..
sudo rm -rf the_silver_searcher

popd
