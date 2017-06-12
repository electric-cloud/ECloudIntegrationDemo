@ECHO OFF

REM
REM DELETE databaseBackupRestoreLocation
REM
ECHO -----DROP DATABASES-----

set user="system"
set /p PASSWD="Enter PASSWD for %user%: "

sqlcmd -S localhost -Q "DROP DATABASE ecloudintegration_ref" -U %user% -P %PASSWD%
sqlcmd -S localhost -Q "DROP DATABASE ecloudintegration_dev" -U %user% -P %PASSWD%

ECHO -----RECREATE DATABASES and SCHEMAS-----
sqlcmd -S localhost -i reset.sql   -U %user% -P %PASSWD%
