@echo off
plink -ssh root@127.0.0.1 -P 42 -pw "AZER" "rm -rf /var/www/* && mkdir /var/www/html && git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/"
