## In this project there will be two different scripts:

The first one will open notepad with powershell script

the second one will use the “Windows Task Scheduler” to run the first script periodically.

Wait X seconds (received as parameter)

Example Usage:

```.\Task-Generator.ps1 -TaskName "MyName" -TriggerSeconds “60” -WaitSeconds "120”```

Example Output:

```\Adobe Acrobat Update Task
\CCleanerSkipUAC
\Dragon_Center_updater
\Dragon_Center_updater
```
