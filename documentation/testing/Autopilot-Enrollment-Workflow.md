# Proposed Windows Autopilot Enrollment Workflow

The proposed pilot enrollment workflow outlines the major steps that will be used to prepare, enroll, configure, and validate an approved Windows device through Microsoft Intune and Windows Autopilot.

## Planned Enrollment Workflow

1. Collect the device hardware information required for Windows Autopilot registration.
2. Register approved pilot devices with Windows Autopilot.
3. Assign the appropriate Group Tag and deployment profile.
4. Confirm that pilot devices are included in the required Microsoft Entra ID and Intune device groups.
5. Initiate the Windows Autopilot provisioning process.
6. Authenticate the required user or device identity through Microsoft Entra ID.
7. Enroll the device into Microsoft Intune.
8. Complete hybrid identity integration where required.
9. Apply the approved device naming convention and configuration profiles.
10. Apply endpoint security and account policies, including BitLocker and Windows LAPS where applicable.
11. Deploy the required Windows applications.
12. Review enrollment, application, configuration, security, and compliance status in Intune.
13. Document deployment failures, troubleshooting actions, and required remediation.
14. Validate the device against the pilot acceptance criteria before final acceptance.

## Planned Validation

During pilot testing, the enrollment workflow will be evaluated to determine whether:

- Autopilot registration and enrollment complete successfully
- The required device naming convention is applied
- Configuration profiles are successfully applied
- Security policies are successfully applied
- Required applications are deployed
- Device compliance status can be verified
- Manual technician intervention can be measured
