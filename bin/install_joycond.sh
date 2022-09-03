#!/bin/bash

# install dkms first
sudo apt install dkms

# install dkms-hid-nintendo
git clone https://github.com/nicman23/dkms-hid-nintendo
cd dkms-hid-nintendo

sudo dkms add .
sudo dkms build nintendo -v 3.2
sudo dkms install nintendo -v 3.2

# install joycond
sudo apt install libevdev-dev
cmake .
sudo make install
sudo systemctl enable --now joycond
