#!/bin/bash
export ORACLE_HOME=/app/oracle/product/11.2.0


#FILE="pl_script_1.sql,pl_script_2.sql,pl_script_3.sql"


for x in $(echo $1 | sed "s/,/ /g")  
do

/app/oracle/product/11.2.0/bin/sqlplus -s EDHMDB_OWN/EDHMDB_OWN@db404ora.intranet.fw:1521/MDM_SVI<<EOF
whenever sqlerror exit sql.sqlcode;
set echo off 
set heading off

@$x

exit;
EOF


done

