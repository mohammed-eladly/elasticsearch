#!/bin/bash
set -e

echo "Update OS."

sudo apt-get update

echo "------------------------------------------------------------------"

echo "Installing Java.."

sudo apt-get install default-jre

echo "------------------------------------------------------------------"

echo "adding elasticSearch key.."

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "------------------------------------------------------------------"

echo "install transport https.."

sudo apt-get install apt-transport-https

echo "------------------------------------------------------------------"

echo "add elasticSearch repo.."

echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

echo "------------------------------------------------------------------"

echo "update OS .."

sudo apt-get update

echo "------------------------------------------------------------------"

echo "Installing ElasticSearch..."

sudo apt-get install elasticsearch

echo "------------------------------------------------------------------"

java -version

echo "------------------------------------------------------------------"

echo "Installtion Done.."
