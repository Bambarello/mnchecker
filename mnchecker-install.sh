#!/bin/bash
sudo git clone https://github.com/Bambarello/mnchecker /root/mnchecker
crontab -l > tempcron
echo "*/30 * * * * /root/mnchecker/mnchecker --currency-handle=\"/root/binarium/binarium\" --currency-bin-cli=\"/root/binarium/binarium-cli\" --currency-datadir=\"/root/.binariumcore\" > /root/mnchecker/mnchecker-cron.log 2>&1"  >> tempcron
crontab tempcron
rm tempcron
