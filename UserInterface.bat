@ECHO OFF

SET SourceEnvironment=DEV2
SET TargetEnvironment=MT1
SET BUILD_NUMBER=5
SET DN_NAME=TEIDE_OSP_1015_xxx
SET jobFolder=JOB_%SourceEnvironment%_%TargetEnvironment%_%DN_NAME%_%BUILD_NUMBER%

set /p SIF_IMPORT_LOCATION=<%temp%\SIF_Import_Location.txt
echo.
echo ++++++++++++++++++++++++++++++++++++++++
echo ++ ADVANCED FULL COMPILATION UTILITY ++
echo ++++++++++++++++++++++++++++++++++++++++
echo.
echo Environment = %TargetEnvironment%
echo Date            = %date%
ECHO SRF PATH        = %%SRF_PATH%\siebel_sia_%LANG%.srf%

mkdir %WORKSPACE%/%jobFolder%

cd %WORKSPACE%/%jobFolder%

svn checkout --username %SVN_User% --password %SVN_Password% %DN_PATH%
