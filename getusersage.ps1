#Powershell script

#Check for PS version
$PSVersionTable | findstr PSV

#Check for a list of latest fixes
#Get-HotFix

#pwd
$location = Get-Location

#List services in alpha order
#Get-Service * | Sort-Object ServiceType | Format-Table Name, ServiceType, Status -AutoSize

#list aliases
#Get-Alias

#print an arrary using both foreach and for
$array = @("item1", "item2", "item3")
Write-Host "Printing a simple array using ForEach."
foreach ($element in $array) { $element }
Write-Host "Printing a simple array using For."
for($i = 0; $i -lt $array.length; $i++){ $array[$i] }

#using an if condidition
$x = Read-Host -Prompt "Enter your age: "
if($x -le 18){write-host("You're still a minor.")}
else {write-host("You can drink & drive but not on the same day!")}

#create a new folder and create a file inside of it

#test to see if folder exists yet
if (Test-Path C:\Temp\Test-Folder="False") { New-Item -Path 'C:\Temp\Test-Folder' -ItemType Directory }
  else {Write-Host "Folder already exists."}
if (Test-Path C:\Temp\Test-Folder\Test-File.txt="False") { New-Item -Path 'C:\Temp\Test-Folder\Test-File.txt' -ItemType File }
  else {Write-Host "File already exists."}

#Rename-Item C:\temp\Test-Folder\Test-File.txt test1.txt

#Get-Content D:\temp\test\test.txt 

#New-Item D:\temp\test\test.csv -ItemType File

#Set-Content D:\temp\test\test.csv 'Mahesh,Suresh,Ramesh'

#Get-Content D:\temp\test\test.csv

#Clear-Content D:\temp\test\test.txt

#Set-Content D:\temp\test\test.txt 'Hello'

#Add-Content D:\temp\test\test.txt 'World!'
