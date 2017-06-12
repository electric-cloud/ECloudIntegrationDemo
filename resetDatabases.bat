@ECHO OFF

REM
REM DELETE databaseBackupRestoreLocation
REM
ECHO -----DROP DATABASES-----

set /p PASSWD="Enter PASSWD: "

sqlcmd -S localhost -Q "DROP DATABASE ecloudintegration_ref" -U lrochette -P %PASSWD%
sqlcmd -S localhost -Q "DROP DATABASE ecloudintegration_dev" -U lrochette -P %PASSWD%

ECHO -----RECREATE DATABASES and SCHEMAS-----
sqlcmd -S localhost -i reset.sql   -U lrochette -P %PASSWD%
