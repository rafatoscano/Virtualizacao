#!/bin/bash

helm install srv-lr Guestbook/config/ &> /dev/null

if [ $? == 0 ];then
	helm install redis-lr Redis/config/ &> /dev/null
	if [ $? != 0 ];then
		echo "Confira se o chart já foi utilizado para instalação do ambiente"
	fi
else
	echo "Confira se o chart já foi utilizado para instalação do ambiente"
fi
