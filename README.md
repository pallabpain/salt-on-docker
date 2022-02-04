# Running salt-stack on Docker

## How to use
To bring up the stack, run the following
```
git clone <>

cd  salt-on-docker

docker-compose up
```
To scale the number of minions, run the following
```
docker-compose up --scale salt-minion=3
```