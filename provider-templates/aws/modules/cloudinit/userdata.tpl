#cloud-config
repo_update: true
repo_upgrade: all

write_files:
- path: /home/centos/testing.sh
  permissions: '0777'
  owner: centos:centos
  content: |
    #!/bin/sh
    touch /home/centos/testing.txt
    mkdir python
    sudo yum install python3-pip -y
    sudo pip3 install pymysql -t python
        
runcmd:
 #- [ sh, /home/centos/testing.sh ]
 #- [ python3, /home/centos/mysql.py ]