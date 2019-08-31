::
echo "INFO: Run mq-metrics01"
::
::set local
::set spring.profiles.active=win-tstqpd01
::
::java -jar -Djavax.net.debug=none mq-metrics-0.0.1-SNAPSHOT.jar --spring.profiles.active=win-tstqpd01
java -jar -Djavax.net.debug=none mq-metrics-0.0.1-SNAPSHOT.jar --spring.config.location=file:./config/ --spring.profiles.active=win-tstqpd01
::
::java -jar mq-metrics-0.0.1-SNAPSHOT.jar -Djavax.net.ssl.trustStore=C:\ProgramData\IBM\MQ\qmgrs\TSTQPD01\ssl\tstqpd01jks.jks -Djavax.net.ssl.keyStore=C:\ProgramData\IBM\MQ\qmgrs\TSTQPD01\ssl\tstqpd01jks.jks -Djavax.net.ssl.trustStorePassword=Passw0rd -Djavax.net.ssl.keyStorePassword=Passw0rd   
::docker-compose up -d
::docker run -d -v "C:\Users\mickm\OneDrive\Documents\Development\Docker\mq-metrics:/config/" -e spring.profiles.active=prod-qmap01 -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::docker run -d -v "C:\Users\mickm\OneDrive\Documents\Development\Docker\mq-metrics:/config/" -e spring.profiles.active=dev-tstqpd01 -p 8082:8082 --name=mq-tstqpd01 mq-metrics:01
::
::docker run -d -e spring.profiles.active=dev -e ibm.mq.connName=169.254.9.188(1442) -e ibm.mq.queueManager=QMAP01 -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::
::docker run -d -e application.debug=true -e ibm.mq.connName=169.254.9.188(1442) -e ibm.mq.queueManager=QMAP01 -e ibm.mq.channel=ADMIN.TLS.SVRCONN -e ibm.mq.security.keystore=/usr/local/bin/qmap01jks.jks -e ibm.mq.security.truststore=/usr/local/bin/qmap01jks.jks -e ibm.mq.sslCipherSpec=TLS_RSA_WITH_AES_256_CBC_SHA256 -e ibm.mq.useSSL=true -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::