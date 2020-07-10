#!/bin/bash

sudo sed -i "$ deb http://deepin.c3sl.ufpr.br/deepin/ unstable contrib main non-free" "/etc/apt/sources.list"

sudo apt update

sudo apt install cmake libqt5widgets5 libdtkcore-dev libdtkwidget-dev qt5-default libpolkit-qt5-1-dev libkf5syntaxhighlighting-dev libkf5codecs-dev qttools5-dev-tools qtbase5-private-dev libxcb-util0-dev libdtkwm-dev libxtst-dev -y

mkdir build
cd build
cmake ..
make
sudo make install

