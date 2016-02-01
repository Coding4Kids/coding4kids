#!/bin/bash
echo ""
echo "Universidade Junior 2015"
echo ""
echo ""

echo ""
echo "Attach your antenna to GPIO4"
echo ""
echo ""

echo ""
echo "Installing FM Radio"
echo ""
echo ""

echo ""
echo "If you want to change parameters use the following command:"
echo "pi_fm_rds [-freq freq] [-audio file] [-ppm ppm_error] [-pi pi_code] [-ps ps_text] [-rt rt_text]"
echo ""
echo "You can check the project documentation on:"
echo "https://github.com/ChristopheJacquet/PiFmRds"
echo "pi_fm_rds [-freq freq] [-audio file] [-ppm ppm_error] [-pi pi_code] [-ps ps_text] [-rt rt_text]"
echo ""

sudo apt-get install libsndfile1-dev
git clone https://github.com/ChristopheJacquet/PiFmRds.git
cd PiFmRds/src
make

echo ""
echo "Running on FM 107.9MHz (JUNIORFM)"
echo ""
echo ""

sudo ./pi_fm_rds -audio stereo_44100.wav -ps UJUNIORFM

#To play audio from USB Mic uncomment the following line:
#arecord -fS16_LE -r 22050 -Dplughw:1,0 - | sudo ./pifm - 107.9 22050