$location = Get-Location
cd $location
New-Item $location\hello.txt -ItemType File -Value "Hello Bootcamp!"
Start-Process -FilePath $location\hello.txt