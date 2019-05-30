#!/bin/bash
source "/vagrant/scripts/common.sh"
set -x

myid=$1
export myid


function installZookeeper {
	echo "安装本地zookeeper"
	# FILE=/vagrant/resources/$ZOOKEEPER_ARCHIVE
	tar -xzf /vagrant/resources/zookeeper-3.4.7.tar.gz -C /get/soft
}


function setupZookeeper {
	echo "拷贝 zookeeper配置文件 以及创建data目录"
#	mkdir -p /var/spark/conf/
#	cp -fRp /vagrant/resources/spark/slaves /var/spark/conf/
    cp -f /vagrant/resources/zookeeper/zoo.cfg /get/soft/zookeeper-3.4.7/conf
    # The -p (i.e., parents) option creates the specified intermediate directories for a new directory if they do not already exist
    # mkdir /tmp/zookeeper and put a "myid" file containing node number is a must for zookeeper.
    # should test to see if this file and directory has been set up succsessfully and if node number has been written into this file
#    if [ ! -d /get/soft//$ZOOKEEPER_VERSION/$ZOOKEEPER_DATA_DIR ]; then
	    echo "创建myid"
	    mkdir -p  /get/soft/zookeeper-3.4.7/zookeeper_data
	    echo "${myid}" >>  /get/soft/zookeeper-3.4.7/zookeeper_data/myid
#	fi
}

function setupEnvVars {
	echo "设置 zookeeper 环境变量"
    echo export ZOOKEEPER_HOME=/get/soft/zookeeper-3.4.7 >> /etc/profile
    echo export PATH=\${ZOOKEEPER_HOME}/bin:\${PATH}  >> /etc/profile
}


echo "setup zookeeper"

installZookeeper
setupZookeeper
setupEnvVars
