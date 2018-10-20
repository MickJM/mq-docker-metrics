::
::
echo "INFO: Build mq-metrics"
::
rename mq-metrics-0.0.1-SNAPSHOT.jar mq-metrics-0.0.1-1.jar
docker build --tag mq-metrics:01 .
::