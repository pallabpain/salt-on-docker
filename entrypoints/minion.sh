#!/bin/bash
set -e

sed -i "s|#master: salt|master: salt-master|g" /etc/salt/minion

salt-minion -l debug