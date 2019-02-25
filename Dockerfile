#
FROM alpine:3.8
#
COPY mq-metrics-0.0.1-1.jar /usr/local/bin/
#
RUN ls -lrt /usr/local/bin/
RUN ip addr show eth0
RUN route
#
CMD ["java","-jar","/usr/local/bin/mq-metrics-0.0.1-1.jar"]
