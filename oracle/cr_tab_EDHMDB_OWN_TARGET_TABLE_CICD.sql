WHENEVER OSERROR EXIT SQL.OSCODE ROLLBACK;
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK;

SPOOL cr_tab_EDHMDB_OWN_TARGET_TABLE_CICD.log
SET AUTOCOMMIT OFF TIMING ON ECHO ON FEEDBACK ON TERMOUT ON

CREATE TABLE
	EDHMDB_OWN.TARGET_TABLE_CICD (
		ACCOUNT_NUMBER VARCHAR2(60),
        ACCOUNT_NAME VARCHAR2(60),
		STATUS VARCHAR2(20),
		ACTIVATION_DATE DATE
	)
TABLESPACE
	TBS_EDH_TRX_DATA
;

SPOOL OFF
EXIT
