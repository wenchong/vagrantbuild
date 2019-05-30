# /vagrant/scripts/common
JAVA_ARCHIVE=jdk-8u65-linux-x64.tar.gz
JAVA_HOME_DIR_PATH=/get/soft/jdk1.8.0_65
Scala_ARCHIVE=scala-2.10.5.tgz
Scala_DIR_PATH=/get/soft/scala-2.10.5
ZOOKEEPER_VERSION=zookeeper-3.4.7
ZOOKEEPER_ARCHIVE=$ZOOKEEPER_VERSION.tar.gz
#ZOOKEEPER_MIRROR_DOWNLOAD=../resources/zookeeper-3.4.7.tar.gz
ZOOKEEPER_RES_DIR=/vagrant/resources/zookeeper
ZOOKEEPER_CONF_DIR=/get/soft/$ZOOKEEPER_VERSION/conf
ZOOKEEPER_DATA_DIR=/get/soft/$ZOOKEEPER_VERSION/zookeeper_data
#maven
MAVEN_ARCHIVE=apache-maven-3.3.9-bin.tar.gz
MAVEN_DIR_PATH=/get/soft/apache-maven-3.3.9
#kafka
KAFKA_VERSION=kafka_2.11-0.10.0.0
KAFKA_ARCHIVE=$KAFKA_VERSION.tgz
KAFKA_RES_DIR=/vagrant/resources/kafka
KAFKA_CONF=/get/soft/$KAFKA_VERSION/config
#ssh
SSHPASS_DIR_PATH=/vagrant/resources/sshpass-1.05-1.el6.rf.x86_64.rpm
SSH_RES_DIR=/vagrant/resources/ssh
RES_SSH_COPYID_ORIGINAL=$SSH_RES_DIR/ssh-copy-id.original
RES_SSH_COPYID_MODIFIED=$SSH_RES_DIR/ssh-copy-id.modified
RES_SSH_CONFIG=$SSH_RES_DIR/config
#echo "common loaded"
