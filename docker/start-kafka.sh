#!/bin/bash
if [[ ! -z "$brokerId" ]]; then
	echo "broker.id=$brokerId" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$listeners" ]]; then
    echo "listeners=$listeners" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$advertisedListeners" ]]; then
    echo "advertised.listeners=$advertisedListeners" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$numNetworkThreads" ]]; then
	echo "num.network.threads=$numNetworkThreads" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$numIOThreads" ]]; then
	echo "num.io.threads=$numIOThreads" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$socketSendBufferBytes" ]]; then
	echo "socket.send.buffer.bytes=$socketSendBufferBytes" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$socketReceiveBufferBytes" ]]; then
	echo "socket.receive.buffer.bytess=$socketReceiveBufferBytes" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$socketRequestMaxBytes" ]]; then
	echo "socket.request.max.bytes=$socketRequestMaxBytes" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$logDirs" ]]; then
	echo "log.dirs=$logDirs" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$numPartitions" ]]; then
	echo "num.partitions=$numPartitions" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$numRecoveryThreadsPerDataDir" ]]; then
	echo "num.recovery.threads.per.data.dir=$numRecoveryThreadsPerDataDir" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$logFlushIntervalMessages" ]]; then
    echo "log.flush.interval.messages=$logFlushIntervalMessages" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$logFlushIntervalMs" ]]; then
    echo "log.flush.interval.ms=$logFlushIntervalMs" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$logRetentionHours" ]]; then
	echo "log.retention.hours=$logRetentionHours" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$logRetentionBytes" ]]; then
    echo "log.retention.bytes=$logRetentionBytes" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$logSegmentBytes" ]]; then
    echo "log.segment.bytes=$logSegmentBytes" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$logRetentionCheckIntervalMs" ]]; then
	echo "log.retention.check.interval.ms=$logRetentionCheckIntervalMs" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$zookeeperConnect" ]]; then
	echo "zookeeper.connect=$zookeeperConnect" >> /opt/kafka/config/server.properties
fi
if [[ ! -z "$zookeeperConnectionTimeoutMs" ]]; then
	echo "zookeeper.connection.timeout.ms=$zookeeperConnectionTimeoutMs" >> /opt/kafka/config/server.properties
fi

echo "### Kafka Server Properties Start ###"
cat /opt/kafka/config/server.properties
echo "### Kafka Server Properties End ###"

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties