function DirReduc([array]$arr) {
  $i = 1
  $b = $false
  [System.Collections.ArrayList]$arr2 = $arr | ForEach-Object { $_ }
  while (($arr2.Count -gt 1) -and ($i -lt $arr2.Count)) {
    switch ($arr2[$i]) {
      "NORTH" {
        if ($arr2[$i - 1] -eq "SOUTH") {
          
        $b = $true
        } #else {$i++}
      }
      "SOUTH" {
        if ($arr2[$i - 1] -eq "NORTH") {
          $b = $true
        }#else {$i++}
      }
      "EAST" {
        if ($arr2[$i - 1] -eq "WEST") {
          $b = $true
        }#else {$i++}
      }
      "WEST" {
        if ($arr2[$i - 1] -eq "EAST") {
          $b = $true
        } #else {$i++}
      }
    }
    if ($b) {
      $arr2.RemoveAt($i)
      $arr2.RemoveAt($i - 1)
      if ($i -gt 1) {$i--}
      $b = $false
    }
    else {$i++}
  }
  $arr2
}

# DirReduc(@("NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"))
# DirReduc(@("NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "NORTH"))
DirReduc(@("EAST", "EAST","WEST", "NORTH", "WEST", "EAST", "EAST", "SOUTH", "NORTH", "WEST"))
