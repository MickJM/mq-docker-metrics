::
echo "INFO: Run mq-metrics01"
::
::docker-compose up -d
docker run -d -v "C:\Users\mickm\OneDrive\Documents\Development\Docker\mq-metrics:/config/" -e spring.profiles.active=prod-qmap01 -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::
::docker run -d -e spring.profiles.active=dev -e ibm.mq.connName=169.254.9.188(1442) -e ibm.mq.queueManager=QMAP01 -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::
::docker run -d -e application.debug=true -e ibm.mq.connName=169.254.9.188(1442) -e ibm.mq.queueManager=QMAP01 -e ibm.mq.channel=ADMIN.TLS.SVRCONN -e ibm.mq.security.keystore=/usr/local/bin/qmap01jks.jks -e ibm.mq.security.truststore=/usr/local/bin/qmap01jks.jks -e ibm.mq.sslCipherSpec=TLS_RSA_WITH_AES_256_CBC_SHA256 -e ibm.mq.useSSL=true -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::