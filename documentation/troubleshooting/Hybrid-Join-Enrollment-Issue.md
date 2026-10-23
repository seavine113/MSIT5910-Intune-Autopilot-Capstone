# Hybrid Join / MDM Enrollment Issue

## Issue
Autopilot deployment progressed through ODJ processing and device object
creation but did not complete Hybrid Join / MDM enrollment.

## Observed Successful Steps
- Autopilot profile assigned
- ODJ request downloaded
- AD computer object created
- ODJ blob generated
- Entra device object created

## Failed Stage
- Hybrid Join / MDM enrollment

## Troubleshooting
- Reviewed connector and enrollment configuration
- Validated AD object creation and OU placement
- Used PowerShell validation during troubleshooting
- Worked with Microsoft support

## Status at the End of Unit 5
At the conclusion of Unit 5, Hybrid Join / MDM enrollment had not yet
completed successfully. Troubleshooting was continuing with Microsoft support.

## Final Resolution and Implementation Status

The Hybrid Microsoft Entra Join and Microsoft Intune enrollment issue was successfully resolved during the later implementation and testing phases of the MSIT 5910 capstone project.

Further troubleshooting identified network connectivity restrictions caused by Palo Alto firewall filtering during the Windows Out-of-Box Experience (OOBE). These restrictions prevented the affected devices from communicating properly with the services required to complete the provisioning process.

After the network connectivity issue was corrected, Windows Autopilot provisioning successfully completed, including Hybrid Microsoft Entra Join, Microsoft Intune enrollment, and domain authentication.

The expanded evaluation subsequently included 10 successfully provisioned Windows devices, demonstrating that the implemented deployment workflow functioned across the evaluated devices.

This resolution highlighted the importance of validating network connectivity and required cloud service access before initiating Windows Autopilot provisioning.

The original troubleshooting observations above are retained to document the issue as it existed during Unit 5 and the investigation process that followed.
