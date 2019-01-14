
<p align="right">
 <a href="https://www.powershellgallery.com/packages/ProductivityTools.PSGetDayInGivenWeek/">
  <img src="http://cdn.productivitytools.tech/Powershell40px.png" /></a>
<a href="http://www.productivitytools.tech/get-dayingivenweek/">
<img src="http://cdn.productivitytools.tech/Blog40px.png" /><a>
</p>

# ProductivityTools.PSGetDayInGivenWeek
Powershell methods to help manage date.

Module calculates date of day of week (Monday, Tuesday,…) for given week.

Lets say that I would like to receive first Monday after 2018.01.01

```powershell
GetRequestedDayOfWeek '2020.01.01' -Monday
```
and it will return

```powershell
2020.01.06
```

If I would like to find previous one then:

```powershell
GetRequestedDayOfWeek '2020.01.01' -Monday -Before
2019.12.30
```
