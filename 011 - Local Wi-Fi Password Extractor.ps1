$profiles = (netsh wlan show profiles) | Select-String "\:(.+)$" | %{$_.Matches.Groups[1].Value.Trim()}
$results = @()

foreach ($profile in $profiles) {
    $key = (netsh wlan show profile name="$profile" key=clear) | Select-String "Key Content\W+\:(.+)$" | %{$_.Matches.Groups[1].Value.Trim()}
    if ($key) { $results += [PSCustomObject]@{ SSID = $profile; Password = $key } }
}
$results | Format-Table -AutoSize
