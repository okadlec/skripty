#!/bin/bash
cas=`date +%T`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`


echo "Aktualni cas: "$cas >> /home/student/skripty/index.html
echo "Moje IP: "$ip>> /home/student/skripty/index.html
echo "Prijata data: "$rx>> /home/student/skripty/index.html
echo "Odeslana data: "$tx>> /home/student/skripty/index.html
echo "<br><br>" >> /home/student/skripty/index.html




