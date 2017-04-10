echo "============ Setting up environment (1/3) ============"
echo "172.16.2.2 ews" >> /etc/hosts
echo "172.16.2.5 domain1 node1" >> /etc/hosts
echo "172.16.2.6 domain2 node2" >> /etc/hosts
echo "========stopping firewalld============="
sudo systemctl stop firewalld.service
sudo systemctl disable firewalld.service
echo "export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk" >>  ~/.bashrc
echo "export JBOSS_HOME=/opt/jboss-eap-6.4" >>  ~/.bashrc
source ~/.bashrc
echo "============ Add new user (2/3)============ "
sudo groupadd -g 48 -r jboss
sudo useradd -c "Jboss" -u 48 -g jboss -s /bin/sh -r jboss
echo "============ Install Jboss (3/3)============ "
unzip /vagrant/binary/jboss-eap-6.4.0.zip -d /opt/
sudo cp -a /vagrant/conf/. /opt/jboss-eap-6.4/domain/configuration
sudo cp -R /vagrant/vault /opt/
sudo chown -R jboss:jboss /opt/jboss-eap-6.4
sudo mkdir /opt/logs
sudo touch /opt/logs/nohup.eap.out
sudo chmod 777 /opt/logs/nohup.eap.out
