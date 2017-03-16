#!/usr/bin/env bash

GITLAB_INST_FILE=gitlab-ce_8.17.3-ce.0_amd64.deb

cd /vagrant
if ! [ -f $GITLAB_INST_FILE ]; then
	echo "[NOTICE] downloading GitLab; $GITLAB_INST_FILE"
	wget -q https://packages.gitlab.com/gitlab/gitlab-ce/packages/debian/wheezy/$GITLAB_INST_FILE/download -O $GITLAB_INST_FILE
fi
echo "[NOTICE] installing GitLab; $GITLAB_INST_FILE"
sudo dpkg -i $GITLAB_INST_FILE

HOSTNAME=$(hostname)
IP=$(ifconfig eth1 | awk '/inet addr/{print substr($2,6)}')
sudo sed -i "s/$HOSTNAME/$IP/g" /etc/gitlab/gitlab.rb
sudo cat /etc/gitlab/gitlab.rb | grep "^external_url"

echo "[NOTICE] configuring GitLab"
sudo gitlab-ctl reconfigure

echo "[NOTICE] open GitLab on your web browser; http://$IP"

echo "[NOTICE] provisioning complete!"
