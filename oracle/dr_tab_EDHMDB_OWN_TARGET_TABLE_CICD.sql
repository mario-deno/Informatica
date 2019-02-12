whenever oserror exit SQL.OSCODE rollback
whenever sqlerror exit SQL.SQLCODE rollback

set autocommit off timing on echo on feedback on termout on
spool dr_tab_EDHMDB_OWN_TARGET_TABLE_CICD.log

declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('TARGET_TABLE_CICD');
   if c = 1 then
      execute immediate 'drop table EDHMDB_OWN.TARGET_TABLE_CICD';
   end if;
end;
/
spool off
exit
