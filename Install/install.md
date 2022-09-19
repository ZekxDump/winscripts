# Script Description

Why Winget?
- Winget comes preinstalled in Newer Versions of Windows
- Winget is easy to use
- Breaks the temptation to guess and blindly try solutions

### Why Installing Choco and Scoop is Optional?
Winget has mostly all packages that is needed for daily use apart from a few packages like MPV(doesn't have a official Package yet) and same goes for ffmpeg. Scoop and Chocolatey serve as easy way for installing these packages.

### Basic Tools
Basics tools Consists of Basic necessities like a Primary Text Editor, Web Wroswer,etc

This Includes
- [Librewolf](https://librewolf.net)  `winget install -e --id LibreWolf.LibreWolf`
- [ShareX](https://getsharex.com/) `winget install -e --id ShareX.ShareX`
- WinRAR `winget install -e --id RARLab.WinRAR`
- Notepad++ `winget install -e --id Notepad++.Notepad++` 
- Windows Terminal `winget install -e --id Microsoft.WindowsTerminal`
- [Everything](https://www.voidtools.com) `winget install -e --id voidtools.Everything`


For rest info Check `install.bat`

### Installing Package managers
- For Chocolatey, Open Powershell as Admin then 

  ```Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))```

- For Scoop `iex "& {$(irm get.scoop.sh)} -RunAsAdmin"`

or execute `_install-package-manager.ps1` in elevated powershell terminal