#!/bin/bash

sudo apt install cmake libqt5widgets5 libdtkcore-dev libdtkwidget-dev qt5-default libpolkit-qt5-1-dev libkf5syntaxhighlighting-dev libkf5codecs-dev qttools5-dev-tools qtbase5-private-dev libxcb-util0-dev libdtkwm-dev libxtst-dev -y

mkdir build
cd build
cmake ..
make
sudo make install

