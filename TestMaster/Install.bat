@ECHO OFF
@SET TEMPLATEDIR="C:\Program Files\Common Files\Microsoft Shared\web server extensions\14\TEMPLATE"
@SET STSADM="C:\Program Files\Common Files\Microsoft Shared\web server extensions\14\bin\stsadm"

Echo Copying source files to WSS \Template directory
xcopy /e /y TEMPLATE\* %TEMPLATEDIR%

Echo Installing TestMaster Page as feature in WSS
%STSADM% -o installfeature -name TestMaster -force

Echo Restarting IIS
Echo IISRESET


