#!/bin/bash
sudo apt install libusb-1.0 libudev-dev -y 
wget https://golang.org/dl/go1.14.15.linux-armv6l.tar.gz &&
sudo tar -C /usr/local -xzf go1.14.15.linux-armv6l.tar.gz &&
/usr/local/go/bin/go get -u github.com/riking/joycon/prog4/jcdriver
