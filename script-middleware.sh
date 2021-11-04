#!/bin/bash
# -*- ENCODING: UTF-8 -*-
source /home/mqsiuser/.bash_profile
source /home/mqsiuser/.bashrc


case $1 in
start)
strmqm QManager
sleep 30
mqsistart BROKER
sleep 1
;;
stop)
endmqm QManager
sleep 1
mqsistop -i BROKER

;;
esac
exit 0