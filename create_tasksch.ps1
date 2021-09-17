param ($TaskName, $TriggerSeconds, $WaitSeconds)
$TriggerMinutes = $TriggerSeconds/60
$location = Get-Location
$time = Get-date -Format HH:mm
$AddArgument = "powershell.exe -ExecutionPolicy Bypass -file '$location\open_notepad.ps1'"
#$action = New-ScheduledTaskAction -Execute "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -Argument $AddArgument -WorkingDirectory $location
#$trigger = New-ScheduledTaskTrigger -Once -At $time -RepetitionInterval (New-TimeSpan -Minutes $TriggerMinutes)
#Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $TaskName
schtasks.exe /CREATE /SC DAILY /MO 1 /TN $TaskName /TR $AddArgument /ST $time /RI $TriggerMinutes /DU 24:00 /RL HIGHEST
Get-ScheduledTask | Select-Object -Property TaskName
Start-Sleep -s $WaitSeconds
schtasks.exe /CHANGE /TN $TaskName /DISABLE
