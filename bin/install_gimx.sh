sudo apt install gdebi 
sudo apt install libbluetooth3 libmhash2 libwxbase3.0-0v5 libwxgtk3.0-0v5 xterm avrdude
wget https://github.com/matlo/GIMX/releases/download/v8.0/gimx_8.0-1_armhf.deb -O gimx.deb
sudo dpkg --force-overwrite -i gimx.deb
