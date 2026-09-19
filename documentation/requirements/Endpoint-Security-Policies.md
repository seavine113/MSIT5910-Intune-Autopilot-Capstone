# Endpoint Security and Account Policies

The Microsoft Intune and Windows Autopilot pilot will include planned endpoint security and account-management policies intended to provide a consistent security baseline for provisioned Windows devices.

## BitLocker

BitLocker will be used to provide full-disk encryption for supported pilot devices. The configuration will be applied through Microsoft Intune and validated during pilot testing.

The pilot will verify:

- BitLocker encryption is successfully enabled
- Required encryption settings are applied
- Recovery information is stored using the approved organizational process
- Encryption status can be reviewed through Intune

## Windows LAPS

Windows Local Administrator Password Solution (LAPS) will be used where applicable to manage local administrator credentials securely.

The pilot will verify:

- The Windows LAPS policy is successfully applied
- Local administrator passwords are managed according to organizational requirements
- Authorized administrators can retrieve required account information using approved access controls

## Administrative Access

Administrative access to Microsoft Intune and related configuration functions will follow organizational security practices, including:

- Role-based access control (RBAC)
- Least-privilege administrative access
- Multifactor authentication (MFA)
- Use of authorized administrative accounts

## Validation

During pilot testing, endpoint security and account policies will be reviewed for:

- Successful policy assignment
- Successful policy application
- BitLocker encryption status
- Windows LAPS policy status
- Security or compliance configuration failures
- Issues requiring troubleshooting or remediation
