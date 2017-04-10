echo "============ Running EAP============ "
sudo sh -c "echo 'nohup /opt/jboss-eap-6.4/bin/domain.sh -b 0.0.0.0 -bmanagement 0.0.0.0 -c domain.xml --host-config=host-slave.xml -Djboss.node.name=node2 -Djgroups.bind_addr=172.16.2.6 -Djboss.domain.master.address=172.16.2.5 &> /opt/logs/nohup.eap.out&' >> /etc/rc.local"
sudo chmod +x /etc/rc.local
sudo sh -c 'nohup /opt/jboss-eap-6.4/bin/domain.sh -b 0.0.0.0 -bmanagement 0.0.0.0 -c domain.xml --host-config=host-slave.xml -Djboss.node.name=node2 -Djgroups.bind_addr=172.16.2.6 -Djboss.domain.master.address=172.16.2.5 &> /opt/logs/nohup.eap.out&'
