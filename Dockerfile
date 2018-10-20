#
FROM alpine:3.8
#
COPY mq-metrics-0.0.1-1.jar /usr/local/bin/
#
RUN ls -lrt /usr/local/bin/
#
CMD ["java","-jar","/usr/local/bin/mq-metrics-0.0.1-1.jar"]
