::
::
echo "INFO: Run mq-metrics01"
::
::
docker run -d -e application.debug=true -e ibm.mq.connName=169.254.9.188(1442) -e ibm.mq.queueManager=QMAP01 -e ibm.mq.channel=ADMIN.TLS.SVRCONN -e ibm.mq.security.keystore=/usr/local/bin/qmap02jks.jks -e ibm.mq.security.truststore=/usr/local/bin/qmap01jks.jks -e ibm.mq.sslCipherSpec=TLS_RSA_WITH_AES_256_CBC_SHA256 -e ibm.mq.useSSL=true -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::docker run -d -e application.debug=true -e spring.profiles.active=dev -e HOST=169.254.9.188 -e QMGR=QMAP01 -e CHANNEL=ADMIN.TLS.SVRCONN -e USE_SSL=TRUE -e PORT=1442 -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::docker run --network=host -d -e application.debug=true -e spring.profiles.active=dev -e HOST=169.254.9.188 -e QMGR=QMAP01 -e CHANNEL=ADMIN.TLS.SVRCONN -e USE_SSL=TRUE -e PORT=1442 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8082:8082 --name=mq-metrics01 mq-metrics:01

:: use without SSL
::docker run --network=host -d -e HOST=172.17.228.113 -e QMGR=TSTQPD01 -e CHANNEL=MQ.MONITOR.SVRCONN -e PORT=1414 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::docker run -d -e HOST=169.254.9.188 -e QMGR=TSTQPD01 -e CHANNEL=MQ.MONITOR.SVRCONN -e PORT=1414 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::
::docker run -d -e HOST=172.16.2.113 -e QMGR=TSTQPD01 -e CHANNEL=MQ.MONITOR.SVRCONN -e PORT=1414 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::
::docker run -d -e HOST=172.29.181.113 -e QMGR=AOKQSC01 -e CHANNEL=MQ.MONITOR.SVRCONN -e PORT=1419 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8092:8082 --name=mq-metrics02 mq-metrics:01
