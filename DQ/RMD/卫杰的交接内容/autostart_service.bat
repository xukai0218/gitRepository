@echo off
rem  ����ѭ�����ʱ��ͼ��ķ���
set secs=15
set srvname="RMDS"

echo.
echo ========================================
echo == ��ѯ����������״̬ ==
echo == ÿ���%secs%���ֽ���һ�β�ѯ ==
echo == �緢����ֹͣ��������������==
echo == !! �벻Ҫ�ر�������� !!==
echo ========================================
echo.
echo �˽ű����ķ����ǣ�%srvname%
echo.

if %srvname%. == . goto end

:chkit
set svrst=0
echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%
for /F "tokens=1* delims= " %%a in ('net start') do if /I "%%a %%b" == %srvname% set svrst=1
if %svrst% == 0 net start %srvname%
set svrst=
rem ���������������ʱ��������ܻᵼ��cpu�����������ء�
ping -n %secs% 127.0.0.1 > nul
goto chkit

:end