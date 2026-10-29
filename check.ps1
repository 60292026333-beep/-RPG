$f = [System.IO.File]::ReadAllText("c:\progroming\RPG2\typing-rpg.html", [System.Text.Encoding]::UTF8)
Write-Host "File length: $($f.Length)"
$open  = ($f.ToCharArray() | Where-Object {$_ -eq '{'}).Count
$close = ($f.ToCharArray() | Where-Object {$_ -eq '}'}).Count
Write-Host "{ count: $open  } count: $close  Balance: $($open - $close)"
