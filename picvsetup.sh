#!/bin/bash

echo "Updating and upgrading your Pi..."
sudo apt-get update -y && sudo apt-get upgrade -y && sudo rpi-update -y
sudo echo "CONF_SWAPSIZE=2048" > /etc/dphys-swapfile
echo "Installing all required dependencies..."
sudo apt-get install build-essential cmake pkg-config -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libgtk2.0-dev libgtk-3-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
echo "Going back to the home directory..."
cd ~
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.4.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.4.0.zip
unzip opencv.zip
unzip opencv_contrib.zip
sudo pip3 install numpy
cd ~/opencv-4.4.0
mkdir build
cd build
echo "Initiating build process..."
cmake -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-4.4.0/modules \
  -D BUILD_EXAMPLES=ON ..
make -j4
sudo make install && sudo ldconfig
sudo reboot
