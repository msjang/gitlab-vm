#!/usr/bin/env bash

cp /etc/apt/sources.list /etc/apt/sources.list.bak
sed -i 's/gb.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
sed -i 's/us.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
sed -i 's/security.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
apt-get -y -qq update

apt-get -y -q install vim tree wget curl unzip zip zerofree
apt-get -q -y install openssh-server ca-certificates
apt-get -q -y install git

apt-get -y -q install software-properties-common
apt-add-repository ppa:brightbox/ruby-ng
apt-get -y -q update
apt-get -y -q install ruby2.2
