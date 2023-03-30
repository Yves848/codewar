function comp($a1, $a2)
{
  $r = $false
  if ((-not $a1) -or (-not $a2)) {
    $r=$false
  }
  [System.Collections.ArrayList]$arr = $a2 | ForEach-Object {$_}
  foreach($a in $a1) {
    $po = [System.Math]::Pow($a,2)
    $index = $arr.IndexOf($po)
    if ($index -eq -1) {
      #Write-Host "$($a)^2 not found"
      $r = $false
    }
    else {
      #Write-Host "$($a)^2 = $($arr[$index])"
      $r = $true
    }
  }
  Write-Host "a1 : $($a1)"
  Write-Host "a2 : $($a2)"
  Write-Host "result : $($r)"
  return $r
}

function test {
  $lines = [System.Collections.ArrayList]$data = (Get-Content -Path $PSScriptRoot\data.txt -Raw) -split "`r`n"
  for ($i = 0; $i -lt $lines.Count; $i+=2) {
    [array]$a1 = ([string]$lines[$i]).Split(' ') | ForEach-Object {$_}
    [array]$a2 = ([string]$lines[$i+1]).Split(' ') | ForEach-Object {$_}
    Write-Host "#####-------#####"
    comp $a1 $a2

  }
}

test