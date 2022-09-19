@echo off
echo.
echo ----------------------------
echo ----- Install Script -------
echo ----------------------------


echo.
echo ---------- Basic -----------
echo.

echo Installing WinRAR
winget install -e --id RARLab.WinRAR
echo.

echo Installing Notepad++
winget install -e --id Notepad++.Notepad++
echo.

echo Installing Librewolf
winget install -e --id LibreWolf.LibreWolf
echo.

echo Installing ShareX
winget install -e --id ShareX.ShareX
echo.

echo Installing Everything
winget install -e --id voidtools.Everything
echo.

echo Installing Windows Terminal
winget install -e --id Microsoft.WindowsTerminal
echo.

echo.
echo --------- Internet ----------
echo.

echo Installing Brave Browser
winget install -e --id BraveSoftware.BraveBrowser
echo.

rem echo Installing qBittorrent
rem winget install -e --id qBittorrent.qBittorrent
rem echo.

echo Installing Termius
winget install -e --id Termius.Termius
echo.

echo Installing Discord
winget install -e --id Discord.Discord
echo.

echo Installing Telegram Desktop
winget install -e --id Telegram.TelegramDesktop
echo.

echo.
echo ----------Security----------
echo.

echo Installing Authy Desktop
winget install -e --id Twilio.Authy
echo.

echo Installing Bitwarden
winget install -e --id Bitwarden.Bitwarden
echo.

echo Installing 1password
winget install -e --id AgileBits.1Password
echo.

echo.
echo -----------Media------------
echo.

echo Installing VLC
winget install -e --id VideoLAN.VLC
echo.

rem echo Installing Jellyfin Media Player
rem scoop bucket add extras
rem scoop install jellyfin
rem echo.

rem echo Installing Jellyfin Media Player
rem choco install jellyfin-media-player
rem echo.

echo Installing Jellyfin Media player 
winget install -e --id Jellyfin.JellyfinMediaPlayer
echo.

echo Installing Plex Desktop
winget install -e --id Plex.Plex
echo.

rem echo Installing ffmpeg
rem choco install -y ffmpeg
rem echo.
