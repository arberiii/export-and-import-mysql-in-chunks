#!/bin/sh

cd PATH_TO_CHUNKS
NO_CHUNKS=1
for i in `seq 1 $NO_CHUNKS`;
do
	mysql -uUSER -pPASSWORD DATABASE_NAME < chunk$i.sql
done
