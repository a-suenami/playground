#!/bin/sh

# some package
sudo yum -y install java
sudo yum -y install openssl
sudo yum -y install openssl-devel

# Elasticsearch
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.0.tar.gz
tar xzvf elasticsearch-1.6.0.tar.gz
rm elasticsearch-1.6.0.tar.gz

# Ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.bash_profile
rbnev install 2.2.2

# Redis
sudo yum -y install epel-release
sudo yum -y --enablerepo=epel install redis

# MySQL
sudo yum -y mysql
