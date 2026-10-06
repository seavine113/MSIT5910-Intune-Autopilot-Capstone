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

## Current Status
At the conclusion of Unit 5, Hybrid Join / MDM enrollment had not yet
completed successfully. Troubleshooting was continuing with Microsoft support.
