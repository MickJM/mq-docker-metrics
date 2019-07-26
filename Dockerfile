#
FROM alpine:3.8
#
COPY mq-metrics-0.0.1-SNAPSHOT.jar /usr/local/bin/
#
# use a volume mount
# COPY qmap01jks.jks /usr/local/bin/
#COPY application-dev.yaml /
#
#RUN ls -lrt /usr/local/bin/
#RUN ls -lrt /
#RUN ip addr show eth0
#RUN route
#
CMD ["java","-jar","/usr/local/bin/mq-metrics-0.0.1-SNAPSHOT.jar"]
