setlocal
set ddf=%TEMP%\cabprof.ddf
(echo %1) > "%ddf%"
makecab /d MaxDiskSize=2048000 /d RptFileName=NUL /d InfFileName=NUL /d DiskDirectoryTemplate="%~n1" /f "%ddf%"
del "%ddf%"
