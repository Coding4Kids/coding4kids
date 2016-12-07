#!/bin/bash
echo ""
echo "Coding for Social Impact Labs"
echo ""
sudo apt-get update
sudo apt-get install unattended-upgrades
sudo apt-get install git-core -y

echo ""
echo "Installing Sense HAT"
echo ""
echo ""
sudo apt-get install sense-hat -y
sudo pip-3.2 install pillow -y

echo ""
echo "Installing GitG"
echo ""
echo ""
sudo apt-get install gitg -y

echo ""
echo "Installing NinjaIDE"
echo ""
echo ""
sudo apt-get install ninja-ide

echo ""
echo "Installing WiringPi (GPIO COMMAND)"
echo ""
echo ""
git clone git://git.drogon.net/wiringPi
cd wiringPi
git pull origin
./build

echo ""
echo "Installing ScartchGPIO4"
echo ""
echo ""
wget https://raw.github.com/cymplecy/scratch_gpio/master/install_scratchgpio4.sh -O isgh.sh
sudo sh isgh.sh

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
