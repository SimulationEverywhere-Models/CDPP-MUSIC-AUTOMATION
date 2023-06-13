MAFileName=InputBox("Enter the MA file name (with the extension):", "Enter the MA file name")
if (MAFileName="") then wscript.quit

Set objFSO = CreateObject("Scripting.FileSystemObject")

if Right(MAFileName,3) <> ".ma" then 
	WScript.Echo "Make sure that you have entered the full name of the MA file ..." & vbcrlf & "Example: lifema_1.ma"
	wscript.quit
end if

if NOT(objFSO.FileExists (MAFileName)) then
	wscript.echo "The file entered does not exist in the current path ..." & VBCRLF & "Exiting porgram ..."
	wscript.quit
end if

FileNamelen=len(MAFileName)-3
strFileName=left(MAFileName,FileNamelen)
'wscript.echo strFileName

OUTFileName=strFileName & "OUT.OUT"

javaname=strFileName & "OUT"
'wscript.echo OUTFileName

batfilename="runMA.bat " & MAFileName & " " & strFileName
'wscript.echo batfilename


'===============================================================================
'PLEASE CHANGE THE PATH IN THE NEXT LINE WITH THE CORRECT PATH IN YOUR COMPUTER.
'PLEASE CHANGE THE "D:\Temp\Assignment2\Java" PART. YOUR PATH SHOULD CONTAIN THE
'MA FILES, JAVA FILES, AND SCRIPT FILES. 
'===============================================================================


strShowDrawfile= "Notepad " & """" & "D:\Temp\Assignment2\Java\" & strFileName & "MADRW.drw" & """"
'wscript.echo strShowDrawfile

set wshshell = WScript.CreateObject ("WSCript.shell")

wshshell.run batfilename, 4 ,TRUE
wshshell.run strShowDrawfile


strCommandConversion="Conversion.exe MusicModulationMAOUT.out " & OUTFileName

strCommandMusic="java ComposeOne " & javaname

'wscript.echo strCommandConversion
'wscript.echo strCommandMusic

wshshell.run strCommandConversion, 4 ,TRUE

wshshell.run strCommandMusic, 4 ,TRUE



