#!/bin/bash
echo ""
echo "Universidade Junior 2015"
echo ""

echo ""
echo "Installing x11vnc"
echo ""
echo ""

wget http://goo.gl/MbfUEp -O isx11.sh
sudo bash isx11.sh

echo ""
echo "Installing ScratchGPIO7"
echo ""
echo ""

wget http://bit.ly/1wxrqdp -O isgh7.sh
sudo bash isgh7.sh

echo ""
echo "Blocking Write access on example content for Scratch"
echo ""
echo ""
sudo chattr +i Documents/Scratch\ Projects/blink11.sb
sudo chattr +i Documents/Scratch\ Projects/rsc.sb
sudo chattr +i Documents/Scratch\ Projects/GPIOexample.sb

echo ""
echo "Installing WiringPi (GPIO COMMAND)"
echo ""
echo ""

git clone git://git.drogon.net/wiringPi
cd wiringPi
git pull origin
./build
