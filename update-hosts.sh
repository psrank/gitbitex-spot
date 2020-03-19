#!/usr/bin/env bash

function add_to_hosts { 
    if grep -q "$1" /etc/hosts; then
        echo "$1 exists"
    else
        echo -e "127.0.0.1\t$1" >> /etc/hosts;
    fi 
}

add_to_hosts gitbitext-mysql
add_to_hosts gitbitext-kafka
add_to_hosts gitbitext-zoo
add_to_hosts gitbitext-redis
