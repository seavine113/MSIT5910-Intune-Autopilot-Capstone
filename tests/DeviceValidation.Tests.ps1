# DeviceValidation.Tests.ps1
# MSIT 5910 Capstone
# Pester Unit Tests for DeviceValidation-v2.ps1

# Load the validation functions without running the interactive section
. "C:\DATA\IntuneProject\Scripts\DeviceValidation-v2.ps1"


Describe "Test-DevicePrefix" {

    It "passes when the computer name begins with DCSS-" {

        $Result = Test-DevicePrefix `
            -ComputerName "DCSS-TEST01"

        $Result.Passed | Should -Be $true
    }


    It "fails when the computer name does not begin with DCSS-" {

        $Result = Test-DevicePrefix `
            -ComputerName "DESKTOP-12345"

        $Result.Passed | Should -Be $false
    }
}


Describe "Test-ADComputerExists" {

    BeforeEach {

        Mock Import-Module {}

    }


    It "passes when the computer exists in Active Directory" {

        Mock Get-ADComputer {

            [PSCustomObject]@{
                DistinguishedName =
                    "CN=DCSS-TEST01,OU=Autopilot,DC=example,DC=local"
            }
        }

        $Result = Test-ADComputerExists `
            -ComputerName "DCSS-TEST01"

        $Result.Passed | Should -Be $true
    }


    It "fails when the computer does not exist in Active Directory" {

        Mock Get-ADComputer {
            throw "Computer not found"
        }

        $Result = Test-ADComputerExists `
            -ComputerName "DCSS-MISSING"

        $Result.Passed | Should -Be $false
    }
}


Describe "Test-ADComputerOU" {

    It "passes when the computer is in the expected OU" {

        Mock Get-ADComputer {

            [PSCustomObject]@{
                DistinguishedName =
                    "CN=DCSS-TEST01,OU=Autopilot,DC=example,DC=local"
            }
        }

        $Result = Test-ADComputerOU `
            -ComputerName "DCSS-TEST01" `
            -ExpectedOU "OU=Autopilot,DC=example,DC=local"

        $Result.Passed | Should -Be $true
    }


    It "fails when the computer is in the wrong OU" {

        Mock Get-ADComputer {

            [PSCustomObject]@{
                DistinguishedName =
                    "CN=DCSS-TEST01,OU=WrongOU,DC=example,DC=local"
            }
        }

        $Result = Test-ADComputerOU `
            -ComputerName "DCSS-TEST01" `
            -ExpectedOU "OU=Autopilot,DC=example,DC=local"

        $Result.Passed | Should -Be $false
    }
}