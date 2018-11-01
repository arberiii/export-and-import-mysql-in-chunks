# Export and import mysql in chunks
The largest possible packet that can be transmitted to or from a MySQL 8.0 server or client is 1GB. So I wrote some scripts that can export mysql into chunks and also to import chunks. Each chunk consist of a limited rows of a table.

### Export mysql
First you need to check if your command line recognizes mysql command. Then you open dump script file and edit variables NO_CHUNKS which is number of chunks and ROWS_IN_CHUNKS.
To run the script you need also make it executable ( chmod a+x dump.sh )


