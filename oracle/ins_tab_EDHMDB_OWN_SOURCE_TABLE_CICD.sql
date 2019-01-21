whenever oserror exit SQL.OSCODE rollback
whenever sqlerror exit SQL.SQLCODE rollback

spool ins_tab_EDHMDB_OWN_SOURCE_TABLE_CICD.log
set autocommit off timing on echo on feedback on


INSERT ALL
  INTO EDHMDB_OWN.SOURCE_TABLE_CICD (ACCOUNT_NUMBER, STATUS, ACTIVATION_DATE) VALUES (1000, 'Active', to_date('01-01-2015','dd-mm-yyyy'))
  INTO EDHMDB_OWN.SOURCE_TABLE_CICD (ACCOUNT_NUMBER, STATUS, ACTIVATION_DATE) VALUES (2000, 'Active', to_date('01-01-2017','dd-mm-yyyy'))
  INTO EDHMDB_OWN.SOURCE_TABLE_CICD (ACCOUNT_NUMBER, STATUS, ACTIVATION_DATE) VALUES (3000, 'Disconnecting', to_date('01-01-2016','dd-mm-yyyy'))
SELECT * FROM DUAL;
	
	
COMMIT;

spool off
exit

