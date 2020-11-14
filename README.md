Ministra Docker
#Step 1

curl -fsSL https://get.docker.com -o get-docker.sh sudo sh get-docker.sh apt-get install docker-compose #установить Docker Compose из официального репозитория Ubuntu.


#Step 2

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose sudo chmod +x /usr/local/bin/docker-compose sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose docker-compose --version docker-compose version 1.25.3, build 1110ad01


#Step 3

mkdir /opt/stalker && cd /opt/stalker && wget https://raw.githubusercontent.com/marc10601060/Ministra/master/docker/docker-compose.yml


#Step 4

docker-compose up -d


#Deploy Stalker to container & build

docker exec -it stalker_portal_1 /opt/deploy.sh


#Visit URL

http://YOUR IP/stalker_portal/


#USERNAME & PASS:

admin/1.


Before executing ministra-install.sh, make sure of the following:

The ministra-.zip file is in the same directory as this script
The script has execute permissions (chmod +x ministra-install.sh)


