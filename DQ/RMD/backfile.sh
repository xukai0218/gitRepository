#!/bin/bash
echo "******************************************************"
echo "     Choose back up app" 
echo "        1 rmds-web" 
echo "        2 rmds-service" 
echo "******************************************************"

read projectname 

case $projectname  in 
1)
    echo "backup rmds-web project"
    project="rmds-web"
        ;;
2)
    echo "backup rmds-service project"
    project="rmds-service"
        ;;

esac

    # �жϱ����ļ����Ƿ���� 
    DATE=`date +%Y%m%d`
    #echo "Date $DATE"
    if [ ! -d  "./bakup/$DATE" ]
     then 
       echo "./bakup/$DATE not found then auto mkdir "
       mkdir "./bakup/$DATE"
    else
       echo "./bakup/$DATE found"
    fi
    backfilename="$project""_$DATE.tar"
    # �жϱ����ļ��Ƿ���� ����ȷ���ļ���
    if [ ! -f  "./bakup/$DATE/$backfilename" ]
      then 
       echo "./bakup/$DATE/$backfilename not exist"
    else
       echo "./bakup/$DATE/$backfilename exist"
       backfilename="$project""_$DATE""_01.tar"
       if [ ! -f  "./bakup/$DATE/$backfilename" ]
         then 
          echo "./bakup/$DATE/$backfilename not exist"
       else
          echo "./bakup/$DATE/$backfilename exist"
          backfilename="$project""_$DATE""_02.tar"
	    if [ ! -f  "./bakup/$DATE/$backfilename" ]
               then 
                echo "./bakup/$DATE/$backfilename not exist"
            else
                echo "./bakup/$DATE/$backfilename exist"
                backfilename="$project""_$DATE""_03.tar"
	    fi
       fi
    fi
    echo "backup filename is  $backfilename"
    # ѹ���ļ�
    tar -cf ./bakup/$DATE/$backfilename ./$project


