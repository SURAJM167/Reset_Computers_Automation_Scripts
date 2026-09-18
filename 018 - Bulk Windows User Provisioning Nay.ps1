# Create users directly from script array
$users = @("Reception", "Accountant", "Manager")
$password = ConvertTo-SecureString "Reset@2026" -AsPlainText -Force

foreach ($user in $users) {
    if (-not (Get-LocalUser -Name $user -ErrorAction SilentlyContinue)) {
        New-LocalUser -Name $user -Password $password -PasswordNeverExpires -Description "Auto-Created"
        Write-Host "User $user created successfully."
    }
}
