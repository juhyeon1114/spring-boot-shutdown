#!/bin/bash

ROOT_PATH="/root/apps/spring-boot-shutdown"
JAR="$ROOT_PATH/application.jar"

ERROR_LOG="$ROOT_PATH/error.log"
START_LOG="$ROOT_PATH/start.log"

NOW=$(date +%c)

echo "[$NOW] > 실행" >> $START_LOG
nohup java -jar "$ROOT_PATH/build/libs/spring-boot-shutdown-1.0.0.jar" 2> $ERROR_LOG > /dev/null &

SERVICE_PID=$(pgrep -f $JAR)
echo "[$NOW] > 서비스 PID: $SERVICE_PID" >> $START_LOG