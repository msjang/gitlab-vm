# GitLab with Vagrant

## How to prepare

Install vagrant;
https://www.vagrantup.com/downloads.html

Install vagrant plugins
```
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-timezone
```

Power on `gitlab-vm`
```
cd gitlab-vm/
vagrant up
```

Check provisioning logs
```
[NOTICE] installing GitLab; xxx.deb
...
external_url 'http://192.168.56.XX'
[NOTICE] configuring GitLab
...
[NOTICE] open GitLab on your web browser; http://192.168.56.XX
[NOTICE] provisioning complete!
```

Open your own GitLab with your web browser; http://192.168.56.XX

Configure your own GitLab!

Enjoy!
