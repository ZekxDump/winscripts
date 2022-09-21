# Notes
### Notes and Guides so that I can find them in one Place

- For Listing all Fonts Using Powershell
```
[System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
(New-Object System.Drawing.Text.InstalledFontCollection).Families
```