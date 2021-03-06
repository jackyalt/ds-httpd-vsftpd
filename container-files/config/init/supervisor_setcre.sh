#!/bin/bash

if [ -z "${USER}" ]
then
echo "Supervisor user is default (jacky)"
else
sed -ri "s/jacky/${USER}/g" /etc/supervisord.conf
fi


if [ -z "${PASSWORD}" ]
then
echo "Supervisor password is default (iaw)"
else
sed -ri "s/iaw/${PASSWORD}/g" /etc/supervisord.conf
fi
