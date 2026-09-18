$arpTable = arp -a | Select-String "dynamic|static"
$macList = @()

foreach ($line in $arpTable) {
    $parts = $line -split '\s+'
    if ($parts.Count -ge 3) {
        $macList += [PSCustomObject]@{ IP = $parts[1]; MAC = $parts[2]; Type = $parts[3] }
    }
}
$macList | Export-Csv "C:\Scripts\MAC_Addresses.csv" -NoTypeInformation
