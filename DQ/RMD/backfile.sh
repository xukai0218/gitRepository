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

    # 判断备份文件夹是否存在 
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
    # 判断备份文件是否存在 最终确定文件名
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
    # 压缩文件
    tar -cf ./bakup/$DATE/$backfilename ./$project


