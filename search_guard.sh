#!/bin/bash

# sudo yum install -y java vim wget 

# sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

# echo '[elasticsearch-6.x]
# name=Elasticsearch repository for 6.x packages
# baseurl=https://artifacts.elastic.co/packages/6.x/yum
# gpgcheck=1
# gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
# enabled=1
# autorefresh=1
# type=rpm-md
# ' | sudo tee /etc/yum.repos.d/elasticsearch.repo


# sudo yum -y install elasticsearch

# sudo systemctl restart elasticsearch
# sudo systemctl enable elasticsearch


# echo '[kibana-6.x]
# name=Kibana repository for 6.x packages
# baseurl=https://artifacts.elastic.co/packages/6.x/yum
# gpgcheck=1
# gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
# enabled=1
# autorefresh=1
# type=rpm-md
# ' | sudo tee /etc/yum.repos.d/kibana.repo

# sudo yum -y install kibana

# sudo systemctl restart kibana
# sudo systemctl enable kibana

# sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install -b com.floragunn:search-guard-6:6.2.3-22.0

#sudo /usr/share/kibana/bin/kibana-plugin install search-guard-kibana-plugin:6.2.3-11

cd /root && wget http://repo1.maven.org/maven2/com/floragunn/search-guard-kibana-plugin/6.2.3-11/search-guard-kibana-plugin-6.2.3-11.zip

cd /usr/share/kibana/bin && ./kibana-plugin install file:///root/search-guard-kibana-plugin-6.2.3-11.zip