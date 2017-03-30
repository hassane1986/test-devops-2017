#!/bin/bash
#
# Check that tomcat is running well
# Run this script after tomcat installation

echo ""
echo "Deploy Tomcat using Ansible"
echo "---------------------------"
ansible-playbook /data/deploy_tomcat.yml
echo ""

echo "Check java process and parameters"
echo "---------------------------------"
ps -ef | grep java
echo ""

echo "Check tomcat service status"
echo "---------------------------"
service tomcat8 status
echo ""

echo "Check application home page"
echo "---------------------------"
curl http://localhost:8080
echo ""

echo "Check tomcat logs"
echo "-----------------"
cat /var/log/tomcat8/catalina.out
