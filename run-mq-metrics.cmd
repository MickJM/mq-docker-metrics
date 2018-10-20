::
::
echo "INFO: Run mq-metrics01"
::
docker run -d -e HOST=172.29.181.113 -e QMGR=TSTQPD01 -e CHANNEL=MQ.MONITOR.SVRCONN -e PORT=1414 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8082:8082 --name=mq-metrics01 mq-metrics:01
::
docker run -d -e HOST=172.29.181.113 -e QMGR=AOKQSC01 -e CHANNEL=MQ.MONITOR.SVRCONN -e PORT=1419 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8092:8082 --name=mq-metrics02 mq-metrics:01
