$secPassLen = "16"
$secPassType = "4"

$response = Invoke-RestMethod "https://hardest.pw/api/$secPassLen/$secPassType" -Method 'GET' -Headers $headers -Body $body

$password = $response.password
$link = $response.hardestlink

Set-Clipboard -Value "Link: $link & Password: $password"
