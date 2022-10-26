#! /bin/bash
## script written by Myriam on October/25/2022
##-----------Sonarqube Installattion---------
## "Must be regular user to run this script"
user_name=`whoami`
if [ $user_name != vagrant ]

then
echo "Must be run as user vagrant!!!!"
exit1
fi
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /opt
sudo yum install wget unzip -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/
./sonar.sh start

echo "Sonarqube is successfully installed, now get your ipaddress and      
access your sonarqube on the browser using http://<your-ip-address>:9000"