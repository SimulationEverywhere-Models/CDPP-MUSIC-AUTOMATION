'==================================================================
REM Please change the path in the next line to reperesent the path
REM of Internal Folder of CD++ on your computer.
'==================================================================

"C:\eclipse\plugins\cdBuilder.simulator_1.0.0.201010092241\internal\simuOrig.exe"  -m"%1" -o"%2OUT.out" -l"%2LOG.log" -t"00:00:35:000"

pause

'==================================================================
REM Please change the path in the next line to reperesent the path
REM of Internal Folder of CD++ on your computer.
'==================================================================

"C:\eclipse\plugins\cdBuilder.simulator_1.0.0.201010092241\internal\drawlog.exe" -m'%1' -c'life' -l'%2LOG.log' -t'00:00:35:000' -w'16' -p'16' -0  1> %2MADRW.drw

pause

'==================================================================
REM Please change the path in the next line to reperesent the path
REM of the folder that contains the MA, java, and script files.
'==================================================================

cd /D D:\Temp\Assignment2\Java
