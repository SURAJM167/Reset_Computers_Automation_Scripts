$usbPath = "HKLM:\SYSTEM\CurrentControlSet\Enum\USBSTOR"
$usbDevices = Get-ChildItem -Path $usbPath | ForEach-Object {
    $deviceName = $_.PSChildName
    [PSCustomObject]@{
        Device = $deviceName.Split('&')[1]
        Details = $deviceName
    }
}
$usbDevices | Out-GridView -Title "USB Connection History"
