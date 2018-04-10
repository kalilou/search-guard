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

# echo '[logstash-6.x]
# name=Elastic repository for 6.x packages
# baseurl=https://artifacts.elastic.co/packages/6.x/yum
# gpgcheck=1
# gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
# enabled=1
# autorefresh=1
# type=rpm-md
# ' | sudo tee /etc/yum.repos.d/logstash.repo

# sudo yum -y install logstash

# sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install -b com.floragunn:search-guard-6:6.2.3-22.0


# cd /root && wget http://repo1.maven.org/maven2/com/floragunn/search-guard-kibana-plugin/6.2.3-11/search-guard-kibana-plugin-6.2.3-11.zip

# cd /usr/share/kibana/bin && ./kibana-plugin install file:///root/search-guard-kibana-plugin-6.2.3-11.zip


# sudo cp /home/vagrant/synced_folder/elasticsearch.yml /etc/elasticsearch
# sudo cp /home/vagrant/synced_folder/keys/*.pem /etc/elasticsearch
# sudo chown -R root:elasticsearch /etc/elasticsearch

# sudo cp /home/vagrant/synced_folder/kibana.yml /etc/kibana
# sudo chown -R root:root /etc/kibana/kibana.yml

# sudo cp -r /home/vagrant/synced_folder/sgconfig /usr/share/elasticsearch/plugins/search-guard-6
# sudo chown -R root:root /usr/share/elasticsearch/plugins/search-guard-6

sudo cp /home/vagrant/synced_folder/keys/*.pem /etc/logstash
sudo chown root:root /etc/logstash/*.pem
sudo cp /home/vagrant/synced_folder/logstash.conf /etc/logstash/conf.d/

# sudo systemctl restart kibana
# sudo systemctl enable kibana

# sudo systemctl restart elasticsearch
# sudo systemctl enable elasticsearch

# sudo systemctl restart logstash
# sudo systemctl enable logstash
