#!/bin/bash
echo ""
echo "Teamviewer for Raspberry Pi 2 & 3"
echo ""
echo "You can always download the latest script here:"
echo "wget htt://bit.ly/teamviewerrpi"
echo ""

wget http://download.teamviewer.com/download/linux/version_11x/teamviewer-host_armhf.deb
sudo dpkg -i teamviewer-host_armhf.deb
sudo apt-get -f install

echo ""
echo "If you want TeamViewer to star with the system use the following command:"
echo "sudo teamviewer daemon enable"
echo "sudo teamviewer passwd YOURPASSWORD"
echo ""
