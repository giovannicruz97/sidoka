#!/bin/bash
echo '### SETTING UP ADMINER ENVIRONMENT'

if ! grep -Fxq 'sidoka.db' /etc/hosts
then
   echo "127.0.0.1 sidoka.db" | sudo tee -a /etc/hosts > /dev/null
   echo "0.0.0.0 sidoka.db" | sudo tee -a /etc/hosts > /dev/null
   echo "172.17.0.1 sidoka.db" | sudo tee -a /etc/hosts > /dev/null
fi

echo '### FINISHED'