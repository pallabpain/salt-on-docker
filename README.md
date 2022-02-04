# Running salt-stack on Docker
Bring up a simple salt-stack on your system to play around or dry run your configurations, etc. with `docker-compose`

## Pre-requisites
- `git`
- `docker`
- `docker-compose`

## Usage
To bring up the stack, run the following
```
git clone https://github.com/pallabpain/salt-on-docker.git

cd  salt-on-docker

docker-compose up
```
Runing the above command will bring up the salt-stack with 1 master and 1 minion. To scale the number of minions, run the following
```
docker-compose up --scale salt-minion=3
```