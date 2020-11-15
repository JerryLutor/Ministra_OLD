FROM ubuntu:xenial
RUN apt-get update
RUN apt-get -y -u install npm
RUN npm install -g npm@2.15.11
RUN apt-get install -y unzip
RUN apt-get install -y phing
#RUN npm config set strict-ssl false
RUN ln -s /usr/bin/nodejs /usr/bin/node
ADD deploy.sh /opt/stalker/deploy.sh
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf
ADD default /etc/nginx/sites-available/default
RUN chmod +x /opt/stalker/deploy.sh
