#!/usr/bin/env bash

events=$(echo "[bla1, bla2]" | sed 's/[][]//g;s/,//g')


for i in $events; do
    echo $i
done
