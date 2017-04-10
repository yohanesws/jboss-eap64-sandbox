echo "============ Running Apache============ "
sudo /opt/httpd/sbin/apachectl start
sudo sh -c "echo '/opt/httpd/sbin/apachectl start' >> /etc/rc.local"
sudo chmod +x /etc/rc.local
