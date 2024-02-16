#!/bin/bash
sudo apt update
sudo apt-get update
sudo apt upgrade
sudo apt-get upgrade
sudo apt install -y qtcreator qtbase5-dev qt5-qmake cmake build-essential libboost-all-dev autoconf automake libtool doxygen graphviz g++ autotools-dev libicu-dev libbz2-dev flex bison libfontconfig1-dev libaudio-dev libxt-dev libglib2.0-dev libxi-dev libxrender-dev python3 python3-pip python3-setuptools python3-numpy python3-matplotlib python-dev-is-python3 git

rm codes -rf
mkdir codes
cd codes
git clone https://github.com/RCSS-IR/StarterAgent2D-V2
git clone https://github.com/helios-base/helios-base


cd ../
rm installationFiles -rf
mkdir installationFiles
cd installationFiles

git clone https://github.com/rcsoccersim/rcssserver
git clone https://github.com/helios-base/soccerwindow2
git clone https://github.com/helios-base/librcsc



cd rcssserver
./bootstrap
./configure
make -j8
sudo make install
sudo ldconfig
cd ..


cd librcsc
./bootstrap
./configure
make -j8
sudo make install
cd ..

echo "include /usr/local/lib" | sudo tee -a /etc/ld.so.conf
sudo ldconfig


cd soccerwindow2
./bootstrap
./configure
make
sudo make install



