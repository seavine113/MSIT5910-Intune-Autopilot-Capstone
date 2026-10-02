# DeviceValidation.ps1
# MSIT 5910 Capstone
# Intune / Windows Autopilot ODJ Validation

param (
    [string]$ComputerName,
    [string]$ExpectedOU
)


function Test-ADComputerExists {

    param (
        [string]$ComputerName
    )

    try {
        Import-Module ActiveDirectory -ErrorAction Stop

        $Computer = Get-ADComputer `
            -Identity $ComputerName `
            -Properties DistinguishedName `
            -ErrorAction Stop

        return [PSCustomObject]@{
            Check   = "AD Computer Object"
            Passed  = $true
            Details = "Computer object exists in Active Directory."
        }
    }
    catch {
        return [PSCustomObject]@{
            Check   = "AD Computer Object"
            Passed  = $false
            Details = "Computer object was not found in Active Directory."
        }
    }
}


function Test-ADComputerOU {

    param (
        [string]$ComputerName,
        [string]$ExpectedOU
    )

    try {

        $Computer = Get-ADComputer `
            -Identity $ComputerName `
            -Properties DistinguishedName `
            -ErrorAction Stop

        $ActualOU = $Computer.DistinguishedName `
            -replace "^CN=[^,]+,", ""

        if ($ActualOU -eq $ExpectedOU) {
            return [PSCustomObject]@{
                Check   = "Active Directory OU"
                Passed  = $true
                Details = "Computer object is in the expected OU."
            }
        }
        else {
            return [PSCustomObject]@{
                Check   = "Active Directory OU"
                Passed  = $false
                Details = "Computer object exists but is not in the expected OU."
            }
        }
    }
    catch {
        return [PSCustomObject]@{
            Check   = "Active Directory OU"
            Passed  = $false
            Details = "OU placement could not be validated."
        }
    }
}


function Test-DevicePrefix {

    param (
        [string]$ComputerName
    )

    if ($ComputerName -like "DCSS-*") {
        return [PSCustomObject]@{
            Check   = "DCSS Device Prefix"
            Passed  = $true
            Details = "$ComputerName begins with the required DCSS- prefix."
        }
    }
    else {
        return [PSCustomObject]@{
            Check   = "DCSS Device Prefix"
            Passed  = $false
            Details = "$ComputerName does not begin with the required DCSS- prefix."
        }
    }
}


# ------------------------------------------------------------
# Run interactively only when the script is executed directly.
# This allows Pester to load the functions without launching
# prompts or live Active Directory validation.
# ------------------------------------------------------------

if ($MyInvocation.InvocationName -ne '.') {

    # Request environment-specific information at runtime.
    # This protects organizational privacy by keeping actual
    # domain and OU details out of the shared script.

    if ([string]::IsNullOrWhiteSpace($ComputerName)) {
        $ComputerName = Read-Host "Enter the Autopilot computer name"
    }

    if ([string]::IsNullOrWhiteSpace($ExpectedOU)) {
        $ExpectedOU = Read-Host "Enter the expected OU Distinguished Name"
    }

    $Results = @()

    $Results += Test-ADComputerExists `
        -ComputerName $ComputerName

    $Results += Test-ADComputerOU `
        -ComputerName $ComputerName `
        -ExpectedOU $ExpectedOU

    $Results += Test-DevicePrefix `
        -ComputerName $ComputerName

    Write-Host ""
    Write-Host "DCSS AUTOPILOT ODJ VALIDATION"
    Write-Host "============================="
    Write-Host "Computer: $ComputerName"
    Write-Host ""

    foreach ($Result in $Results) {

        if ($Result.Passed) {
            $Status = "PASS"
        }
        else {
            $Status = "FAIL"
        }

        Write-Host ("{0,-28} {1}" -f $Result.Check, $Status)
        Write-Host ("  {0}" -f $Result.Details)
    }

    Write-Host ""
}