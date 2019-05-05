#!/bin/sh -e

apt-get -y update
apt-get -y dist-upgrade

GROUP_ID=${GROUP_ID:-1001}
USER_ID=${USER_ID:-1001}

groupadd -g $GROUP_ID -o joe
useradd --shell /bin/bash -u $USER_ID -g $GROUP_ID -o -c "" -m joe
export HOME=/home/joe
exec gosu joe "$@"
