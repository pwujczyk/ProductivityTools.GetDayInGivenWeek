function RequestedDayOfWeekAlreadyDefined([string]$requestedDayOfWeek,[bool]$dayPresent,[string]$newRequestedDayOfWeek)
{
	if ($dayPresent)
	{
		if($requestedDayOfWeek -ne '')
		{
			throw "Please define only one day"
		}
		return $newRequestedDayOfWeek
	}
	else
	{
		return $requestedDayOfWeek
	}
}

function GetRequestedDayOfWeek{
		[CmdletBinding()]
		param([Switch]$Monday,
			[Switch]$Tuesday,
			[Switch]$Wednesday,
			[Switch]$Thursday,
			[Switch]$Friday,
			[Switch]$Saturday,
			[Switch]$Sunday)
			
			[string]$requestedDayOfWeek="";
			$requestedDayOfWeek=RequestedDayOfWeekAlreadyDefined $requestedDayOfWeek $Monday.IsPresent "Monday"
			$requestedDayOfWeek=RequestedDayOfWeekAlreadyDefined $requestedDayOfWeek $Tuesday.IsPresent "Tuesday"
			$requestedDayOfWeek=RequestedDayOfWeekAlreadyDefined $requestedDayOfWeek $Wednesday.IsPresent "Wednesday"
			$requestedDayOfWeek=RequestedDayOfWeekAlreadyDefined $requestedDayOfWeek $Thursday.IsPresent "Thursday"
			$requestedDayOfWeek=RequestedDayOfWeekAlreadyDefined $requestedDayOfWeek $Friday.IsPresent "Friday"
			$requestedDayOfWeek=RequestedDayOfWeekAlreadyDefined $requestedDayOfWeek $Saturday.IsPresent "Saturday"
			$requestedDayOfWeek=RequestedDayOfWeekAlreadyDefined $requestedDayOfWeek $Sunday.IsPresent "Sunday"
			return $requestedDayOfWeek
		}

function Get-DayInGivenWeek {
	[CmdletBinding()]
	param([DateTime]$Date,
		[Switch]$Monday,
		[Switch]$Tuesday,
		[Switch]$Wednesday,
		[Switch]$Thursday,
		[Switch]$Friday,
		[Switch]$Saturday,
		[Switch]$Sunday,

		[Switch]$Before,
		[Switch]$After
		)
	if($date -eq $null)
	{
		throw "Missing date paramter"
	}
	
	[string]$dayProvided=GetRequestedDayOfWeek -Monday:$Monday -Tuesday:$Tuesday -Wednesday:$Wednesday -Thursday:$Thursday -Friday:$Friday -Saturday:$Saturday -Sunday:$Sunday
	if ($dayProvided -eq "")
	{
		throw "Missing day parameter (Monday, Tuesday,...)"
	}
	
	if ($Before.IsPresent)
	{
		$direction=-1;
	}
	else
	{
		$direction=1;
	}
	
	for($i=1; $i -le 7;$i=$i+$direction)
	{
		if($date.AddDays($i).DayOfWeek -eq $dayProvided)
		{
			$result=$date.AddDays($i)
			Write-Output $result
			break
		}
	}
}

Export-ModuleMember Get-DayInGivenWeek