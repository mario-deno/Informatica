# variabili modificate: ORACLE_HOME INFA_HOME PWC_IS PWC_DMN BASEDIR
# (forse) PWC_PWD_CRIPT
#
# Oracle
#
ORACLE_HOME=/app/oracle/product/11.2.0
TNS_ADMIN=$ORACLE_HOME/network/admin/
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME/lib/
PATH=$PATH:$ORACLE_HOME/bin
# user/pwd
STG_USR=
STG_PWD=
# connect string
STG_TNS=MDM_SVI

#
# Informatica
#
INFA_HOME=/app/informatica/9.6.1
INFA_DOMAINS_FILE=$INFA_HOME/domains.infa
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$INFA_HOME/server/bin
#PATH=$PATH:$INFA_HOME/server/bin:$INFA_HOME/isp/bin:$INFA_HOME/tomcat/bin
PATH=$PATH:$INFA_HOME/server/bin
# Integration Server
PWC_IS=IS_FW_DEV_961
# Domain
PWC_DMN=DMN_FW_DEV_961
# Folder
PWC_FLD=EDH
#PWC_FLD=TEST
# user/pwd
PWC_USR=dev_user
export PWC_PWD_CRIPT=

export PATH ORACLE_HOME INFA_HOME INFA_DOMAINS_FILE LD_LIBRARY_PATH

# local environment
BASEDIR=/app/infa_shared/edh_sourcefiledir
if [ ${FLUSSO} = "SP" ]; then
  BASEDIR=${BASEDIR}/spsftp
elif [ ${FLUSSO} = "TTS" ]; then
  BASEDIR=${BASEDIR}/ttsftp
elif [ ${FLUSSO} = "OBRM" ]; then
  BASEDIR=${BASEDIR}/brmftp
elif [ ${FLUSSO} = "OBRINV" ]; then
  BASEDIR=${BASEDIR}/brmftp
else
  BASEDIR=${BASEDIR}/wfpwc
fi
SRCDIR=${BASEDIR}/input/
TGTDIR=${BASEDIR}/output/
BCKDIR=${BASEDIR}/archive/
CMDDIR=$HOME/cmd/
LOGDIR=$HOME/log/
LOGFILE=${LOGDIR}${BCMD}_${FLUSSO}_`date '+%Y%m%d%H%M%S'`.log
TMPDIR=${HOME}/tmp/
ERRFILE=${TMPDIR}${BCMD}_${FLUSSO}_`date '+%Y%m%d%H%M%S'`.err

#echo "BASEDIR = "$BASEDIR
#echo "LOGFILE = "$LOGFILE

