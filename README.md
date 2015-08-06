This assumes you already have Docker installed, and this project cloned locally.

```
cd nester_dockerfiles
docker build -t edodd/lamp .
docker run -t nester -i -d -p 80:80 -p 3306:3306 edodd/lamp

cd /app

```
See https://github.com/mycon/nestgraph for more info

#Then, hopefully, browse to http://the vm docker's running on/index.php
