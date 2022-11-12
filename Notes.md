# Notes
### Notes and Guides so that I can find them in one Place

- For Listing all Fonts Using Powershell
```
[System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
(New-Object System.Drawing.Text.InstalledFontCollection).Families
```
<details>
	<summary>Print Starred Repos</summary>
	
- For Printing all Starred Repos ( wsl2 ) [Source](https://gist.github.com/juergenhoetzel/e8dc1d66de92717d49c60a2dafced725)
```
while curl -s "https://api.github.com/users/zekxtreme/starred?per_page=100&page=${page:-1}" |jq -r -e '.[].full_name' && [[ ${PIPESTATUS[1]} != 4 ]]; do     let page++; done | tee stars.txt
```
- For Printing all Starred Repos ( powershell ) [Source](https://gist.github.com/mika76/2dd7be2e982c7b12fc88445d8064fc4d#file-stars-ps1)
```
[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $user = ""
)

$URL = "https://api.github.com/users/$user/starred"
$PAGE = 0

# $totalStars = (Invoke-WebRequest "$($URL)?per_page=1").RelationLink.last
#     | Select-String -Pattern "&page=(?<p>\d+)" -AllMatches 
#     | % { $_.Matches } 
#     | % { $_.Groups } 
#     | Where-Object { $_.Name -eq "p"}
#     | % { $_.Value } 

do {
    $PAGE++
    $r = Invoke-WebRequest -Uri "$($URL)?per_page=500&page=$($PAGE)" -Headers @{'Accept' = 'application/vnd.github.v3.star+json' }
    $isLastPage = -not $r.RelationLink.ContainsKey("last") 

    $r.Content | ConvertFrom-Json | Select-Object starred_at, @{n = 'full_name'; e = { $_.repo.full_name } }
} until ($isLastPage)
```
</details>