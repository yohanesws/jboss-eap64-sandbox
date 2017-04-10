echo "============ Running EAP============ "
sudo sh -c "echo 'nohup /opt/jboss-eap-6.4/bin/standalone.sh -b 0.0.0.0 -c standalone-ha.xml -Djboss.node.name=node2 -Djgroups.bind_addr=172.16.2.4 &> /opt/logs/nohup.eap.out&' >> /etc/rc.local"
sudo chmod +x /etc/rc.local
sudo sh -c 'nohup /opt/jboss-eap-6.4/bin/standalone.sh -b 0.0.0.0 -c standalone-ha.xml -Djboss.node.name=node2 -Djgroups.bind_addr=172.16.2.4 &> /opt/logs/nohup.eap.out&'
