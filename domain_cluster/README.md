#Web Console
http://172.16.2.5:9990/console

#Admin Users

admin/admin123!
node2/node2123!

## get base64 of password

echo -n 'node2123!' | openssl enc -base64

#Application Users
testuser/testuser123!
To represent the user add the following to the server-identities definition <secret value="dGVzdHVzZXIxMjMh" />

#Deploy Application
cluster-test.war --> assign to main-server-group
jms-cluster-example...jar --> assign to other-server-group

#JMS Client Application
client/run.sh or client/run.bat
