@echo off
echo y | plink -ssh root@127.0.0.1 -P 42 -pw "AZER" -i "C:\Users\flavi\.ssh\prive.pkk" "rm -rf /var/www/* && mkdir /var/www/html && git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/"
