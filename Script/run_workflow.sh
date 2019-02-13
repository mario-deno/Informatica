#!/bin/bash


CMD=`basename $0`
BCMD=`basename $0 | awk -F \. '{print $1}'`
DIR=`dirname $0`
MRM_FLD=EDH
FLUSSO=WF_T_DWH_OMC

. ${DIR}/setenv.sh


pmcmd startworkflow -sv "IS_FW_DEV_961" -d "DMN_FW_DEV_961" -u mleone -p mleone -wait $1
