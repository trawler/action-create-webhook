#!/bin/bash

echo "Received webhook url: $1"
echo "Received content_type: $2"
echo "Received secret: $3"
echo "Received events: $4"
echo "Received repository: $5"

events=$(echo $4|sed 's/[][]//g;s/,//g')

for i in $events; do
    echo $i
done