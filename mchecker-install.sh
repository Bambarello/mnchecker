#!/bin/bash
sudo git clone https://github.com/Bambarello/mnchecker /root/mnchecker
crontab -l > tempcron
echo "*/15 * * * * /root/mnchecker/mnchecker --currency-handle=\"binarium\" --currency-bin-cli=\"binarium-cli\" --currency-datadir=\"/root/.binariumcore\" > /root/mnchecker/mnchecker-cron.log 2>&1" >> tempcron
crontab tempcron
rm tempcron
