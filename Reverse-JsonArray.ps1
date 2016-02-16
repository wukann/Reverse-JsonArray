Param([string]$from, [string]$to)
$data = (Get-Content $from -Raw -Encoding UTF8 | ConvertFrom-Json)
$data = $data[($data.length-1)..0]
[Regex]::Unescape((ConvertTo-Json $data)) | Set-Content -Path $to -Encoding UTF8