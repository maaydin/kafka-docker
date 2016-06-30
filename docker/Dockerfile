FROM maaydin/centos-7-oracle-jre-8:latest
MAINTAINER maaydin
ENV container docker

# Environment Variables
ENV HTTP_PROXY="http://172.17.0.1:3128" HTTPS_PROXY="http://172.17.0.1:3128" SCALA_VERSION="2.11" KAFKA_VERSION="0.10.0.0"

ADD start-kafka.sh /usr/bin/start-kafka.sh

# Install Kafka
RUN echo "[main]" >> /etc/yum.conf; \ echo "proxy=$HTTP_PROXY" >> /etc/yum.conf; \
export http_proxy=$HTTP_PROXY; \
export https_proxy=$HTTPS_PROXY; \
curl -v -o /tmp/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz https://archive.apache.org/dist/kafka/0.10.0.0/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz; \
cd /opt/ && tar -xzvf /tmp/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz; \
ln -s /opt/kafka_$SCALA_VERSION-$KAFKA_VERSION /opt/kafka; \
chmod +x /usr/bin/start-kafka.sh; \
yum clean all; \
rm -f /tmp/*; \
head -n -1 /etc/yum.conf > /etc/yum.conf;

EXPOSE 9092

CMD ["/usr/bin/start-kafka.sh"]