# PowerShell Scripts

This folder contains PowerShell scripts planned for use during the implementation and testing phases of the Microsoft Intune and Windows Autopilot pilot project.

## Autopilot Hardware Hash Collection

The `Get-WindowsAutopilotInfo.ps1` script is planned for use to collect the hardware information required to register approved pilot devices with Windows Autopilot.

The collected device information will be used during the Autopilot registration process before pilot provisioning begins.

## Script Source

The `Get-WindowsAutopilotInfo.ps1` script is a Microsoft-provided PowerShell script used for Windows Autopilot device information collection. It is included in this repository as a project utility and is not original project code.

## Security Considerations

Device-specific hardware information and exported hardware hash files will not be stored in this public repository. Only the PowerShell script and supporting documentation will be maintained here.
