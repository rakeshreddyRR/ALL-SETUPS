#! /bin/bash
yum install httpd git -y
systemctl start httpd
systemctl status httpd
cd /var/www/html
git clone https://github.com/rakeshreddyRR/amazon-clone-raw.git
mv amazon-clone-raw/* .
tail -100f /var/log/httpd/access_log
