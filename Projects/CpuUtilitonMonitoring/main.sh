#! /bin/bash
# purpose: Rela time CPU utilization Monitoring 
# version: 1.0
# Create Date :  Jul 30 21:45:30 2024
# Aouthor: Dhanar Rizky
# START

PATHS="/"
HOSTNAME=$(hostname)
CRITICAL=98
WARNING=90
CRITICALMail="Example@gmail.com"
MAILWAR="Example@gamil.in"
mkdir -p /var/log/cputilhist
LOGFILE=/var/log/cputilhist/cpusage-`date +%h%d%y`.log

touch $LOGFILE

for path in $PATHS
do
    CPULOAD=`top -b -n 2 -dl | grep "cpu(s)" | tail -nl | awk '{print $2}' | awk -F '{print $1}'`

    if [ -n $WARNING -a -n $CRITICAL ];then
        if [ "$CPULOAD" -ge "$WARNIG" -a "$CPULOAD" -lt "$CRITICAL" ];then
            echo "`date "+%F %H:%M:%S"` WARNING - $CPULOAD on Host $HOSTNAME" >> $LOGFILE
            echo "Warning Cpuload $CPULOAD Host is $HOSTNAME" | mail -s "CPULOAD is Warning" $MAILWAR
            exit 1
        elif [ "$CPULOAD" -ge "$CRITICAL" ];then
            echo "`date "+%F %H:%m:%S"` CRITICAL - $CPULOAD on Host $HOSTNAME" >> $LOGFILE
            echo "CRITICAL Cpuload $CPULOAD Host is $HOSTNAME" | mail -s "CPULOAD is CRITICAL" $CRITICALMail
            exit 2
        else
            echo  "`date " +%F %H:%M:%S"` OK - %CPULOAD on $HOSTNAME" >> $LOGFILE
            exit 0
        fi
    fi
done

# END