#!/bin/sh
#
# execute test
#


if [[ $# -lt 2 || $# -gt 2 ]];
  then
    echo "usage run_test <testfile> <external_id>"
    exit 1
fi


export ORACLE_HOME=/app/oracle/product/11.2.0
export TNS_ADMIN=$ORACLE_HOME/network/admin/
export INFA_HOME=/app/informatica/9.6.1
export JRE_HOME=/app/informatica/9.6.1/java/jre
export JRE=/app/informatica/9.6.1/java/bin
export JAVA_HOME=/app/informatica/9.6.1/java
export LD_LIBRARY_PATH=/app/informatica/9.6.1/server/bin:/app/informatica/PowerExchange9.6.1:/app/informatica/9.6.1/ODBC7.1/lib:/app/informatica/9.6.1/java/lib:/app/informatica/9.6.1/java/jre/lib::/app/oracle/product/11.2.0/lib/


export PATH=/app/informatica/9.6.1/server/bin:/app/informatica/9.6.1/isp/bin:/app/informatica/9.6.1/tomcat/bin:/app/informatica/PowerExchange9.6.1:/app/infaadm/bin:/app/oracle/product/11.2.0/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/app/infaadm/bin:/app/informatica/9.6.1/java/bin:/app/informatica/9.6.1/java/jre/bin:/app/informatica/9.6.1/ODBC7.1/bin:$INFA_HOME/DVO/DVO:/app/informatica/9.6.1/java/bin

export DV_CONFIG_DIR=$HOME/.config/DataValidator
export PC_CLIENT_INSTALL_PATH=$INFA_HOME/server/bin


#import test DVO repository (oracle)

#echo -e "refreshing repository..\n"

#DVOCmd RefreshRepository test --folderList --folder CICD_MARIO --dryrun 
if [ $? -eq 0 ]; then
	echo -e "DVO repository refreshed" 
	DVOCmd ImportMetadata $1 --overwrite
	if [ $? -eq 0 ]; then
		echo -e "metadata imported"
		DVOCmd InstallTests $2 --forceInstall
		if [ $? -eq 0 ]; then
			echo -e "metadata imported"
			DVOCmd InstallTests $2 --forceInstall
			if [ $? -eq 0 ]; then 
				echo -e "test installed"
				DVOCmd RunTests $2
			else exit $?
			fi
		else exit $?
		fi
	else exit $?
	fi
else exit $?
fi

