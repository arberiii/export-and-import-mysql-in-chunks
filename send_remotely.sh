#!/bin/bash

echo YOUR_CONNECTION_REMOTELY "<<EOF"
echo cd PATH_TO_SAVE_CHUNKS
for i in `seq 1 $NO_CHUNKS`;
do
	echo put chunk$i.sql
done
echo exit
echo "EOF"

