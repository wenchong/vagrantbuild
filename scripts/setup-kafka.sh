#!/bin/bash
source "/vagrant/scripts/common.sh"
set -x

function installKafka {
	echo "安装 kafka"
	# FILE=/vagrant/resources/kafka_2.11-0.10.0.0.tgz
	tar -xzvf /vagrant/resources/kafka_2.11-0.10.0.0.tgz -C /get/soft
}

function setupKafka {
	echo "拷贝kafka配置文件"
    # mkdir $HADOOP_CONF
	cp -f /vagrant/resources/kafka/* /get/soft/kafka_2.11-0.10.0.0/config
}

function setupEnvVars {
	echo "设置环境变量"
	#cp -f $KAFKA_RES_DIR/kafka.sh /etc/profile.d/kafka.sh
     echo export KAFKA_PREFIX=/get/soft/kafka_2.11-0.10.0.0 >> /etc/profile
     echo export KAFKA_CONF_DIR=\${KAFKA_PREFIX}/config >> /etc/profile
     echo export PATH=\${KAFKA_PREFIX}/bin:\${PATH} >> /etc/profile
}


 #ln -s /usr/local/$KAFKA_VERSION /usr/local/kafka


echo "setup kafka"
installKafka
setupKafka
setupEnvVars
