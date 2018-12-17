#!/bin/sh

# Install Elasticsearch 'the original way'
echo "Downloading Elasticsearch into custom project folder..."; echo

cd ~/projects
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/zip/elasticsearch/2.4.0/elasticsearch-2.4.0.zip
unzip elasticsearch-2.4.0.zip
~/projects/elasticsearch-2.4.0/bin/plugin install mobz/elasticsearch-head

echo "Elasticsearch Download Complete"; echo
