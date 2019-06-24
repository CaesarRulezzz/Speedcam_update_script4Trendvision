#!/bin/bash

# Trend-Vision base
#rm /home/user/FULL_Base.rar -f
#wget --output-document=/home/user/FULL_Base.rar -r https://trend-vision.ru/media/files/simple/productfile/FULL_Base.rar
#unrar e -o+ /home/user/FULL_Base.rar /media/user/REGIST/
#rm /home/user/FULL_Base.rar -f

# Show-Me
rm /home/user/combo_database.zip -f
wget --output-document=/home/user/combo_database.zip -r https://speedcam.online/rd.online/shome/combo7new/combo_database.zip
unzip -o /home/user/combo_database.zip -d /mnt/REGIST
rm /home/user/combo_database.zip -f
