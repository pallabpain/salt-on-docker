# Running salt-stack on Docker
Bring up a simple salt-stack on your system to play around or dry run your configurations, etc. with `docker-compose`. This repo is useful for people getting started with salt and want to quickly spin an environment to play around with. <br/>

This repo is based on this tutorial by [Tim White](https://timlwhite.medium.com/the-simplest-way-to-learn-saltstack-cd9f5edbc967).

## Pre-requisites
- `git`
- `docker`
- `docker-compose`

## Usage
To bring up the stack, run the following

```bash
git clone https://github.com/pallabpain/salt-on-docker.git

cd  salt-on-docker

docker-compose up
```

Runing the above command will bring up the salt-stack with 1 master and 1 minion. To scale the number of minions, run the following

```bash
docker-compose up --scale salt-minion=3
```
The above command will create 3 `salt-minion` containers <br/>
In order to access the `salt-master` container in order to execute the following command from the `salt-on-docker` directory
```bash
docker-compose up exec salt-master bash
```
Once you are in the shell of the `salt-master`, you can quickly run the following to test remote execution on all your `salt-minion` containers
```bash
salt '*' cmd.run 'uname -a`
```
Once you have everything up and running, you can refer to any online salt tutorial to try out its different features.