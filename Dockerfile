FROM ubuntu:18.04

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections; \
    apt-get update -y; apt-get install apt-utils wget gnupg -y; \
    wget -q https://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub && \
    apt-key add SALTSTACK-GPG-KEY.pub && \
    rm SALTSTACK-GPG-KEY.pub; \
    echo "deb http://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest bionic main" > /etc/apt/sources.list.d/saltstack.list; \
    apt-get update -y && \
    apt-get install salt-master salt-minion salt-ssh salt-syndic salt-cloud salt-api -y && \
    apt-get clean all
COPY entrypoints/master.sh entrypoints/minion.sh /