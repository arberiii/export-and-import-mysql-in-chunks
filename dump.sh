#!/bin/sh

NO_CHUNKS=1
ROWS_IN_CHUNKS=1

for i in `seq 1 $NO_CHUNKS`;
do
	offsetvar=$(($ROWS_IN_CHUNKS*$i-$ROWS_IN_CHUNKS))
	mysqldump --skip-add-drop-table -uUSER -pPASSWORD DATABASE_NAME TABLE_NAME --where="1 limit $ROWS_IN_CHUNKS offset $offsetvar" > chunk$i.sql
	sed -i 's/CREATE TABLE/CREATE TABLE IF NOT EXISTS/g' chunk$i.sql
done
