$location = Get-Location
$location
New-Item "$location\hello.txt" -ItemType File -Value "Hello Bootcamp!"
Start notepad $location\hello.txt
