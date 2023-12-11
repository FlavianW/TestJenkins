ssh -o StrictHostKeyChecking=no root@127.0.0.1 -p 42 "rm -rf /var/www/* && mkdir /var/www/html && git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/" 
