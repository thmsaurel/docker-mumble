#!/usr/bin/bash
###############################################################################
#
# File Name         : install_murmur_centos.sh
# Created By        : Thomas Aurel
# Creation Date     : March 30th, 2015
# Version           : 0.1
# Last Change       : March 30th, 2015 at 22:50:21
# Last Changed By   : Thomas Aurel
# Purpose           : Download and install murmur server
#
###############################################################################
# download murmur server
wget http://sourceforge.net/projects/mumble/files/Mumble/1.2.8/murmur-static_x86-1.2.8.tar.bz2/download -O murmurserver.tar.bz2

# install murmur server
tar -vxjf /tmp/murmurserver.tar.bz2
mkdir /usr/local/murmur
cp -r /tmp/murmur-static_x86-1.2.8/* /usr/local/murmur

# configure murmur server
groupadd -r murmur
useradd -r -g murmur -m -d /var/lib/murmur -s /sbin/nologin murmur
mkdir /var/log/murmur
chown murmur:murmur /var/log/murmur
chmod 0770 /var/log/murmur

