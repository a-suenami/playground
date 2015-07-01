#!/bin/sh

# some package
sudo yum install java
sudo yum install openssl
sudo yum install openssl-devel

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
sudo yum install epel-release
sudo yum --enablerepo=epel install redis

# MySQL
sudo yum mysql
