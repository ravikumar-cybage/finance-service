param(
    [string]$DB_NAME,
    [string]$DB_STAGE,
    [string]$DB_SERVER,
    [string]$DB_USERNAME,
    [string]$DB_PASSWORD
)

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Restart as administrator
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" -DB_NAME '$DB_NAME' -DB_STAGE '$DB_STAGE' -DB_SERVER '$DB_SERVER' -DB_USERNAME '$DB_USERNAME' -DB_PASSWORD '$DB_PASSWORD'" -Verb RunAs
    Exit
}

$DACPACPath = "Mis.Services.${DB_NAME}.Database\bin\Release\Mis.Services.${DB_NAME}.Database.dacpac"
$TargetConnectionString = "Server=${DB_SERVER};Initial Catalog=${DB_NAME}${DB_STAGE};Persist Security Info=False;User ID=${DB_USERNAME};Password=${DB_PASSWORD};MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False;Connection Timeout=30;"
$SqlPackageCommand = "SqlPackage /Action:Publish /SourceFile:`"$DACPACPath`" /TargetConnectionString:`"$TargetConnectionString`" /p:DropObjectsNotInSource=true"

Invoke-Expression $SqlPackageCommand