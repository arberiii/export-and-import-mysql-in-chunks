#!/bin/sh

cd PATH_TO_CHUNKS
for i in `seq 1 $NO_CHUNKS`;
do
	mysql -uUSER -pPASSWORD DATABASE_NAME < chunk$i.sql
done
