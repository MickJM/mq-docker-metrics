::
::
echo "INFO: Build mq-metrics"
::
:: rename mq-metrics-0.0.1-SNAPSHOT.jar mq-metrics-0.0.1-1.jar
copy C:\Users\mickm\eclipse-workspace\mq-metrics\mq-metrics\target\mq-metrics-0.0.1-SNAPSHOT.jar .
docker build --tag mq-metrics:01 .
::