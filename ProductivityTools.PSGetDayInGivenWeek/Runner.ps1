clear
cd $PSScriptRoot
Import-Module .\ProductivityTools.PSGetDayInGivenWeek.psm1 -Force


Get-DayInGivenWeek $(Get-Date) -Monday -Before 
Get-DayInGivenWeek $(Get-Date) -Tuesday -Before 
Get-DayInGivenWeek $(Get-Date) -Wednesday -Before 
Get-DayInGivenWeek $(Get-Date) -Thursday -Before 
Get-DayInGivenWeek $(Get-Date) -Friday -Before 
Get-DayInGivenWeek $(Get-Date) -Saturday -Before 
Get-DayInGivenWeek $(Get-Date) -Sunday -Before 

Get-DayInGivenWeek $(Get-Date) -Monday -After
Get-DayInGivenWeek $(Get-Date) -Tuesday -After 
Get-DayInGivenWeek $(Get-Date) -Wednesday -After 
Get-DayInGivenWeek $(Get-Date) -Thursday -After 
Get-DayInGivenWeek $(Get-Date) -Friday -After 
Get-DayInGivenWeek $(Get-Date) -Saturday -After 
Get-DayInGivenWeek $(Get-Date) -Sunday -After 

Write-Host "empty"
#Get-DayInGivenWeek $(Get-Date)