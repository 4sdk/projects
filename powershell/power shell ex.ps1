#1
Write-Host "red" -ForegroundColor green

#2
Function Bytes_To_GB() {
	[double]$bytes = Read-Host -Prompt "Enter the number of bytes you want to convert"
	$bytes / 1GB | Write-Host
}

#3
Function Connect-Strings() {
	[String]$first_string = Read-Host -Prompt "enter the first string"
	[String]$second_string = Read-Host -Prompt "enter the second string"
	$final_string = $first_string + $second_string
	Write-Host $final_string
}

#4
$array = @(1, 2, 3, 4)
Write-Host $array.length

#5
Function print-keys() {
	param($hash)
	$hash.GetEnumerator() | % {
		Write-Host $_.key
	}
}

Function print-values() {
	param($hash)
	$hash.GetEnumerator() | % {
		Write-Host $_.value
	}
}

Function print-keys-then-values() {
	param($hash)
	print-keys $hash
	print-values $hash
}

#6
Function is-your-name-daniel() {
	[String]$name = Read-Host -Prompt "enter your name"
	if ($name -eq "daniel") {
		Write-Host "Yes"
	}
 else {
		Write-Host "No"
	}
}

#7
Function how-much() {
	[int]$var = Read-Host -Prompt "enter a number"
	if ($var -gt 10) {
		Write-Host "too much" 
	}
 else {
		Write-Host "not too much"
	}
}

#8
Function in-range() {
	[int]$first_num = Read-Host -Prompt "enter the first number"
	[int]$second_num = Read-Host -Prompt "enter the second number"
	if ($first_num -gt 10 -or $second_num -lt 6) {
		Write-Host "NOOOO"
	}
}

#9
Function number-of-process() {
	$process = Get-Process
	return $process.Count
}

Function too-much-processes() {
	if (number-of-process -gt 50) {
		Write-Host "too much"
	}
}

#10
Get-Process | Select-Object ProcessName, ID | Sort-Object ID

#11
Function stopped-running() {
	$services = Get-Service 
	($services.Status -eq "Stopped").Count | Write-Host
	($services.Status -eq "Running").Count | Write-Host
}


#12
Function generate-array() {
	$array = @()
	$size = 10
	for ($index = 0; $index -lt $size; $index++) {
		$array += Get-Random -Maximum 100
	}
	return $array
}

#13
Function get-highest-number() {
	param($array)
	$max = ($array | Measure -Max).Maximum
	$index = IndexOf($array, [int]$max)
	Write-Host "the highest number is " $max " in the " $index " index" 
}

#14
Function get-svc-process() {
	Get-Process | ForEach-Object {
		if ($_.ProcessName -match "svc") {
			Write-Output $_ 
		}
	}
}

#15
Function get-running-service-name() {
	Get-Service | ForEach-Object {
		if ($_.Status -eq "Running") {
			Write-Output $_.Name 
		}
	}
}

#16
Function Is-Admin() {
	param($user_name)
	Get-LocalGroupMember -Group "Administrators" | ForEach-Object {
		if ($_.Name -eq $user_name) {
			Write-Host "cool you are an admin" 
		}
		else {
			Write-Host "looser you are not an admin"
		}
	}
}

#17
Function change-comp-name() {
	Rename-Computer -NewName "kingcomp" -Restart
}

#18
function PrintArgs() {
    $var_amount = 0
	$args | ForEach-Object {$var_amount++} 
    Write-Host $var_amount
}

