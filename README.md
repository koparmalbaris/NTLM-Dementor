# NTLM-Dementor
Get all NetNTLM Hashes via Different zero-click Methodologies from LLMNR Poisoning 

![dementor](https://user-images.githubusercontent.com/45037356/158398102-e1a3367d-7909-4b27-bc79-1b63ca74a0d2.jpg)

## Attack Scenario
After find the shared folders with "write" permissions on the network, the zero-click LLMNR Poisoning file/files are copied to the relevant share folders. In this way, NTLM hashes of all users who open the relevant shared folders can be captured.

There is a TR blog post for this [`Zero-Click LLMNR Poisoning`](https://bariskoparmal.com/2022/03/15/spoiler/) methodology.

### Windows Shortcut (.LNK) Files Zero-Click LLMNR Poisoning Scenario
![NTLM-Dementor-LNK](https://bariskoparmal.files.wordpress.com/2022/03/lnk3.gif)

### Search Connector (.searchConnector-ms) Files Zero-Click LLMNR Poisoning Scenario
![search-ms](https://user-images.githubusercontent.com/45037356/158547673-3f930cbf-f18c-4bef-979b-4a7dfda08789.gif)

## Weaponization

### Windows Shortcut (.LNK) Files

Download NTLM-Dementor-LNK.ps1 file and change the AttackerIP. Then execute the powershell script.

```powershell
.\NTLM-Dementor-LNK.ps1
```

### Search Connector (.searchConnector-ms) Files

Download NTLM-Dementor-searchConnector-ms.txt file and change file extension to .NTLM-Dementor.searchConnector-ms

```powershell
rename NTLM-Dementor-searchConnector-ms.txt .NTLM-Dementor.searchConnector-ms
```

### Windows Library (.library-ms) Files

Download NTLM-Dementor-library-ms.txt file and change file extension to .NTLM-Dementor.library-ms

```powershell
rename NTLM-Dementor-library-ms.txt .NTLM-Dementor.library-ms
```

### URL (.URL) Files

Download NTLM-Dementor-URL.txt file and change file extension to .NTLM-Dementor.url

```powershell
rename NTLM-Dementor-URL.txt .NTLM-Dementor.url
```

### Shell Command Files (.SCF) Files

Download NTLM-Dementor-SCF.txt file and change file extension to .NTLM-Dementor.scf

```powershell
rename NTLM-Dementor-SCF.txt .NTLM-Dementor.scf
```

## Mitigation
- Disable LLMNR & NBT-NS
- Enforce SMB Signing
- Restrict File Share Permissions
- Disable DisableThumbnailsOnNetworkFolders and DisableThumbnails via GPO
  - https://www.windowscentral.com/how-disable-thumbnails-windows-10#manage_thumbnail_previews_grouppolicy

![mitigation3](https://user-images.githubusercontent.com/45037356/158542970-036a0deb-3dd1-45e7-8c28-e04dad8a4631.jpg)
