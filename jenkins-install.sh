#!/usr/bin/env bash
user=jenkins
# for i in $user
useradd $user

read -p "Please enter a  password for $i:" password
echo "passwd" | passwd jenkins --stdin
sudo yum install curl ant openssl wget vim epel-release -y
sudo yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo yum install jenkins -y
sudo systemctl start jenkins
systemctl status jenkins
sudo systemctl enable jenkins

sudo yum install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl status firewalld
#if you are using a remote CentOS server on aws - make sure you open port 8080 on security groups.
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

sudo su - jenkins -s /bin/bash 
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword