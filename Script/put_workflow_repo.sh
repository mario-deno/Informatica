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

if [ $? -eq 0 ]; then
	echo -e "connected tp repository"
	pmrep objectimport -i $1 -c $1.CTRFL
	if [ $? -eq 0 ]; then
		echo -e "imported"
	else exit $?
	fi
else exit $?
fi

