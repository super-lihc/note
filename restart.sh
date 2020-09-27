/usr/local/tomcat7/bin/shutdown.sh
sleep 5  #具体时间就看你得webapp在调用shutdown.sh后多久后处于僵死状态
ps -ef | grep '/usr/local/tomcat7/conf/' | grep -v grep| awk '{print $2}' | xargs kill -9
sleep 3
/usr/local/tomcat7/bin/startup.sh
