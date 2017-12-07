#!/bin/bash

wget http://www.perforce.com/downloads/perforce/r17.2/bin.linux26x86_64/p4v.tgz
tar xvzf p4v.tgz


P4_DIR="p4v-2017.2.1573260"
P4_PRIO="20172"


sudo mv ${P4_DIR} /usr/local/
sudo update-alternatives --install /usr/bin/p4v p4v /usr/local/${P4_DIR}/bin/p4v ${P4_PRIO}
sudo update-alternatives --install /usr/bin/p4admin p4admin /usr/local/${P4_DIR}/bin/p4admin ${P4_PRIO}
sudo update-alternatives --install /usr/bin/p4merge p4merge /usr/local/${P4_DIR}/bin/p4merge ${P4_PRIO}
sudo update-alternatives --install /usr/bin/p4vc p4vc /usr/local/${P4_DIR}/bin/p4vc ${P4_PRIO}
sudo update-alternatives --install /usr/share/pixmaps/p4v-icon.png p4v-icon.png /usr/local/${P4_DIR}/lib/p4v/P4VResources/icons/P4-V_96x96.png ${P4_PRIO}
wget -qO - https://package.perforce.com/perforce.pubkey | sudo apt-key add -
sudo sh -c 'echo "deb http://package.perforce.com/apt/ubuntu xenial release" > /etc/apt/sources.list.d/perforce.list'
sudo apt update
sudo apt install helix-cli
sudo update-alternatives --install /usr/bin/p4 p4 /opt/perforce/bin/p4 1

cp p4v.desktop ~/.local/share/applications/