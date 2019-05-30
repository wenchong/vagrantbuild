#!/bin/bash

source "/vagrant/scripts/common.sh"
 
# 1. 启动zookeeper
zookeeper_start="/get/soft/zookeeper-3.4.7/bin/zkServer.sh start /get/soft/zookeeper-3.4.7/conf/zoo.cfg"
eval ${zookeeper_start}

# 2. kafka
kafka_start="nohup /get/soft/kafka_2.11-0.10.0.0/bin/kafka-server-start.sh /get/soft/kafka_2.11-0.10.0.0/config/server11.properties>/dev/null 2>&1 &"
# kafka_start="/get/soft/kafka_2.11-0.10.0.0/bin/kafka-server-start.sh /get/soft/kafka_2.11-0.10.0.0/config/server11.properties 2>&1 >/dev/null &"
eval ${kafka_start}
echo "done"

