#!/bin/bash
STOP_LOG="$ROOT_PATH/stop.log"

echo "서비스 종료 " >> $STOP_LOG
kill -9 $(sudo lsof -t -i:8080)