FROM confluentinc/cp-kafka-connect-base:latest
COPY kafka-connect-arangodb-*.jar /usr/share/java/kafka-connect-arangodb/