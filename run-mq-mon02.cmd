::
::
echo "INFO: Run mq-mon01"
::
docker run -d -e HOST=172.29.181.113 -e QMGR=AOKQSC01 -e CHANNEL=MQ.MONITOR.SVRCONN -e PORT=1419 -e USERID=MQMon01 -e PASSWORD=Passw0rd -p 8092:8082 --name=mq-mon02 mq-mon:01