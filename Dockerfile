FROM tutum/lamp:latest
#RUN rm -fr /app && git clone https://github.com/username/customapp.git /app
#RUN rm -fr /app && git clone https://github.com/chriseng/nestgraph.git /app
RUN rm -fr /app && git clone https://github.com/mycon/nestgraph.git /app
RUN git clone https://github.com/gboudreau/nest-api.git /app/nest-api-master
RUN git clone https://github.com/phront/Yahoo-Weather-API-PHP-class.git /app/yahoo-api-master
RUN apt-get -y install wget unzip php5-curl
RUN service apache2 restart
RUN wget https://github.com/mbostock/d3/releases/download/v3.5.6/d3.zip
RUN unzip d3.zip -d /app
ADD files/config.php /app/inc/config.php
ADD files/dbsetup /app/dbsetup
#RUN mysql -u root < /app/dbsetup

EXPOSE 80 3306
CMD ["/run.sh"]
