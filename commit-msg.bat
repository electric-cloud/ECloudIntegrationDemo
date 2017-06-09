@ECHO OFF
REM A hook to verify that a label has been included in the commit message.
REM A label is a string insisde square bracket []
REM

REM finding [label]
REM errorlevel is 0 if found
findstr /R "\[[a-zA-Z0-9,_-]+\]" %1
set res=%errorlevel%
echo "ERROR: %res%"

REM test to check non 0 result
if  "%res%" NEQ "0" (
	echo >&2 "Missing label in the commit message."
	exit /B 1
)
exit /B 0
