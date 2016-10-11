#!/usr/bin/perl

$harga=`curl -s http://www.elevenia.co.id/prd-apple-iphone-7-plus-black-128gb-garansi-6242166 | grep Harga -A3 | grep Akhir -A2 | grep span -A1| cut -d ">" -f2 | cut -d "<" -f1 `;
$hargatok =$harga;

print "  $hargatok ";
crontab -e 
60 [07.00-19.00] * ["$(date +'%a')" !=="Sat"| Sun] printf "$harga" | mail -s UTSTOS someone@something.com
 




