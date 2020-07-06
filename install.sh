#!/bin/bash
sudo apt-get update
sudo apt-get install make zlib-dev libbz2-dev gcc g++
make
sudo make install
echo Compilation is now done. Invoke dmg2iso by entering dmg2iso
