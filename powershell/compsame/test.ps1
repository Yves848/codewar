function comp($a1, $a2)
{
  if ((-not $a1) -or (-not $a2)) {
    return $false
  }
  [System.Collections.ArrayList]$arr = $a2 | ForEach-Object {$_}
  foreach($a in $a1) {
    $po = [System.Math]::Pow($a,2)
    if (-not $arr.Contains($po)) {
      return $false
    }
  }
  return $true
}

function test {
  $lines = [System.Collections.ArrayList]$data = (Get-Content -Path $PSScriptRoot\data.txt -Raw) -split "`r`n"
  for ($i = 0; $i -lt $lines.Count; $i+=2) {
    [array]$a1 = ([string]$lines[$i]).Split(' ') | ForEach-Object {$_}
    [array]$a2 = ([string]$lines[$i+1]).Split(' ') | ForEach-Object {$_}
    comp $a1 $a2

  }
}

test