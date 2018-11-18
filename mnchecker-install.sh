#!/bin/bash
sudo git clone https://github.com/Bambarello/mnchecker /root/mnchecker
crontab -l > tempcron
echo "*/30 * * * * /root/mnchecker/mnchecker --currency-handle=\"binarium\" --currency-bin-cli=\"/root/binarium/binarium-cli\" --currency-bin-daemon=\"/root/binarium/binariumd\" --currency-datadir=\"/root/.binariumcore\" > /root/mnchecker/mnchecker-cron.log 2>&1"  >> tempcron
crontab tempcron
rm tempcron
echo "mnchecker and crontab installed, for duplicates checking run crontab -e"
