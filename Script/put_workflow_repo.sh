#!/bin/sh
#
# caricamento dei dati di MRM nelle tabelle ST
#

#
# valorizzazione variabili
#

CMD=`basename $0`
BCMD=`basename $0 | awk -F \. '{print $1}'`
DIR=`dirname $0`
MRM_FLD=EDH
FLUSSO=WF_T_DWH_OMC

. ${DIR}/setenv.sh


echo "CONNECTING..."

pmrep connect -r REPO_FW_DEV_961 -d DMN_FW_DEV_961 -n mleone -x mleone
pmrep objectimport -i $1 -c $2 -l logfile.log

echo "FINISHED..."
