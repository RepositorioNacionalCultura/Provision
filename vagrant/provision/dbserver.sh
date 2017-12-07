#!/usr/bin/env bash
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.rpm"
yum -y localinstall jdk-8u151-linux-x64.rpm
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.0.1.rpm
rpm -ivh elasticsearch-6.0.1.rpm
systemctl enable elasticsearch.service
systemctl start elasticsearch.service
