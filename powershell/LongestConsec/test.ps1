function LongestConsec([string[]] $strarr, [int]$k) {
  $i = 0
  $l = 0
  $result = ""
  Write-Host $strarr
  Write-Host "-------k--$($k)-------"
  if (($k -gt 0) -and ($strarr.Length -gt 0) -and ($k -le $strarr.Length) ) {
    while ($i -lt $strarr.Length) {
      #$strarr[$i], $strarr[$i+1] -join ""
      $j = ($strarr | Select-Object -Skip $i -First $k) -join ""
      if ($j.Length -gt $l) {
        $result = $j
        $l = $j.Length
      }
      $i += 1
    }
  }
  return $result
}

#LongestConsec @("zone", "abigail", "theta", "form", "libe", "zas") 2
LongestConsec @("n6wymdj43e5u", "3607wmvibe419k", "odb4aei9snrf", "9ayt8rd", "2ymhtd", "aj9pobfgrk6", "xi7qun32g8", "vo6i34zkma8", "hokpu8", "gij928dwsfhr1u", "r670ae", "igbcpk7d390", "2s4a5vwclg", "ynxou5e39a", "onxrz", "t1bhpc", "trb6m0nqo27s4", "i13vucl", "kg7ib0xfsa2ul9") 19
#LongestConsec @("zone", "abigail", "theta", "form", "libe", "zas") 2