#!/bin/sh
#启动百度新闻express
pm2 kill

pm2 start ./bin/www

sleep 5s

#最高CPU使用率
MaxCpuRate=90


while [[ true ]]; do
	#获取node进程
	pid=$(ps aux | grep -v grep | grep "node" | awk '{print $2}')
	time=$(date)
	if [[ ! $pid ]]
		then
		echo "nodejs is not found"
		echo "nodejs is not found"$time"-------" >> error.log
	else 
		echo "nodejs Pid:"$pid
	fi

	#获取CPU占用率
	cpuRate=$(ps -p $pid -o pcpu | grep -v CPU | cut -d . -f 1 | awk '{print $1}')
	if [[ $cpuRate -gt $MaxCpuRate ]]
		then
		echo "CPU占用率超过$MaxCpuRate% nodejs服务将要重启"
		echo "CPU占用率超过$MaxCpuRate% nodejs服务将要重启"$time"-------" >> error.log
		pm2 restart ./bin/www
	else
		echo "nodejs服务器运行正常，当前CPU占用率："$cpuRate%
		echo "10s后将再次监测！"
	fi
	sleep 10s
done


