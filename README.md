<!--Category:PowerShell--> 
 <p align="right">
    <a href="https://www.powershellgallery.com/packages/ProductivityTools.GetDayInGivenWeek/"><img src="Images/Header/Powershell_border_40px.png" /></a>
    <a href="http://productivitytools.tech/get-day-in-given-week/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.GetDayInGivenWeek/"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://http://productivitytools.tech/">
        <img src="Images/Header/LogoTitle_green_500px.png" />
    </a>
</p>

# Get day in a given week

The module calculates the date of the day of the week (Monday, Tuesday,…) for the given week.
<!--more-->
Let's say that I would like to receive the first Monday after 2018.01.01 I could use the command

```PowerShell
Get-DayInGivenWeek '2020.01.01' -Monday
```
and it will return

```PowerShell
2020.01.06
```
![Example](Images/SimpleExample.png)


If I would like to find a previous one then I will use

```PowerShell
Get-DayInGivenWeek '2020.01.01' -Monday -Before
2019.12.30
```

Day parameter can be omitted. Then the current date will be taken.

<!--og-image-->
![Simplest command](Images/CleanVersion.png)

