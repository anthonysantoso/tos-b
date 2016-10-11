#!/bin/bash

harga=`curl -s http://www.elevenia.co.id/prd-apple-iphone-7-plus-black-128gb-garansi-6242166 | grep Harga -A3 | grep Akhir -A2 | grep span -A1| cut -d ">" -f2 | cut -d "<" -f1 `|sed 's!.!!.

echo "  $harga ";
crontab -e
if[ $harga<15000000] * * * * echo"alert harga"| mail -s hargaturun someone@something.com
60 [07.00-19.00] * ["$(date +'%a')" !=="Sat"| "Sun"] echo "$harga" | mail -s UTSTOS someone@something.com

