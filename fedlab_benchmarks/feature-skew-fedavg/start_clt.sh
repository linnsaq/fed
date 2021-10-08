#!/bin/bash

# bash start_clt.sh  2 1 1 0.1
for ((i=$2; i<=$3; i++))
do
{
    echo "client ${i} started"
    python client.py --world_size $1 --rank ${i} --noise $4&
    sleep 2s
}
done
wait
