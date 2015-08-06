docker build -t edodd/lamp .
docker run -t nester -i -d -p 80:80 -p 3306:3306 edodd/lamp

Then, hopefully, browse to http://the vm docker's running on/index.php
