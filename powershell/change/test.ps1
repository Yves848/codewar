function change($s, $prog, $version) {
  $s2 = ([string]$s).Replace("`n"," ")
  Write-Host('$s | ') -NoNewline
  Write-Host("$($s2)")
  Write-Host("#prog : $($prog)  #version : $($version)")
  $result = "Program: $($prog) Author: g964"
  if ($s -match "Phone: \+1-\d{3}-\d{3}-\d{4}")
  {
    $result = $result, "Phone: +1-503-555-0090", "Date: 2019-01-01" -join " "
  }
  else {
    return  "ERROR: VERSION or PHONE"
  }
  
  if ($s -match "Version: (\d+\.\d+)[^\.]") 
  {
    if ($Matches[1] -eq "2.0") {
      $result = $result, "Version: 2.0" -join " "
    }
    else {
      $result = $result, "Version: $($version)" -join " "
    }
  }
  else {
    return  "ERROR: VERSION or PHONE"
  }
  return $result
}

$s1 = "Program title: Primes`nAuthor: Kern`nCorporation: Gold`nPhone: +1-503-555-0091`nDate: Tues April 9, 2005`nVersion: 6.7`nLevel: Alpha"
$s11 = "Program title: Hammer`nAuthor: Tolkien`nCorporation: IB`nPhone: +1-503-555-0090`nDate: Tues March 29, 2017`nVersion: 2.0`nLevel: Release"
$s12 = "Program title: Primes`nAuthor: Kern`nCorporation: Gold`nPhone: +1-503-555-009`nDate: Tues April 9, 2005`nVersion: 6.7`nLevel: Alpha"

change $s1 "Ladder" "1.1" # "Program: Ladder Author: g964 Phone: +1-503-555-0090 Date: 2019-01-01 Version: 1.1"    
change $s11 "Balance" "1.5.6"  # "Program: Balance Author: g964 Phone: +1-503-555-0090 Date: 2019-01-01 Version: 2.0"
change $s12 "Ladder" "1.1" # "ERROR: VERSION or PHONE"