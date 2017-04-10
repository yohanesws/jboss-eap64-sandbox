echo "============ Setting up environment (1/3) ============"
echo "172.16.2.2 ews" >> /etc/hosts
echo "========stopping firewalld============="
sudo systemctl stop firewalld.service
sudo systemctl disable firewalld.service
echo "export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk" >>  ~/.bashrc
source ~/.bashrc
echo "============ Add new user (2/3)============ "
sudo groupadd -g 48 -r apache
sudo useradd -c "Apache" -u 48 -g apache -s /bin/sh -r apache
echo "============ Install ews (3/3)============ "
unzip /vagrant/binary/jbcs-httpd24-httpd-2.4.6-RHEL7-x86_64.zip -d /opt/
cp -R /opt/jbcs-httpd24-2.4/httpd /opt/httpd
sudo cp -a /vagrant/conf/httpd.conf /opt/httpd/conf
sudo cp -a /vagrant/conf/mod_cluster.conf /opt/httpd/conf.d
sudo chown -R apache:apache /opt/httpd
cd /opt/httpd
sudo ./.postinstall
