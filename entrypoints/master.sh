#!/bin/bash
set -e

sed -i "s|#auto_accept: False|auto_accept: True|g" /etc/salt/master

salt-master -l debug