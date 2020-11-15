FROM ubuntu:xenial
RUN apt-get -y -u install npm
RUN npm install -g npm@2.15.11	
RUN npm config set strict-ssl false
RUN ln -s /usr/bin/nodejs /usr/bin/node
ADD deploy.sh /opt/deploy.sh
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf
ADD default /etc/nginx/sites-available/default
RUN chmod +x /opt/deploy.sh
