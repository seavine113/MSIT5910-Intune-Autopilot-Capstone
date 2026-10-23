# Microsoft Intune and Windows Autopilot Deployment
### MSIT 5910 – Master of Science in Information Technology Capstone Project

## Project Overview

This capstone project focuses on designing, implementing, and evaluating a standardized Windows laptop provisioning solution using Microsoft Intune and Windows Autopilot.

The project addresses the limitations of traditional manual workstation deployment by introducing centralized endpoint management, automated application deployment, security configuration, and post-deployment validation.

The solution integrates Microsoft cloud services with an existing on-premises Active Directory environment using Hybrid Microsoft Entra Join.

## Project Objectives

- Implement a standardized Windows laptop provisioning process.
- Integrate Windows Autopilot, Microsoft Intune, Microsoft Entra ID, and on-premises Active Directory.
- Automate required application deployment and security policy assignments.
- Develop PowerShell scripts for post-deployment validation.
- Use Pester to test validation functionality.
- Evaluate deployment efficiency and configuration consistency.

## Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft Intune | Endpoint management, application deployment, and security configuration |
| Windows Autopilot | Automated Windows device provisioning |
| Microsoft Entra ID | Cloud identity and device integration |
| Active Directory | Existing on-premises identity infrastructure |
| Intune Connector for Active Directory | Offline Domain Join support |
| PowerShell | Post-deployment validation |
| Pester | Automated unit testing |
| GitHub | Version control and project documentation |

## System Architecture

The solution integrates Windows Autopilot and Microsoft Intune with a hybrid identity environment.

The deployment process includes device registration, deployment profile assignment, organizational authentication, Offline Domain Join, Intune enrollment, application installation, and post-deployment validation.

The system architecture diagram is included in the `design/architecture` directory.

## Implementation and Validation

The implementation includes:

1. Registering Windows laptops with Windows Autopilot.
2. Assigning deployment profiles and required policies.
3. Configuring Hybrid Microsoft Entra Join.
4. Deploying required applications through Microsoft Intune.
5. Applying security policies, including BitLocker and Windows LAPS.
6. Validating selected Active Directory requirements through PowerShell.

The custom PowerShell validation script performs three checks:

- **Test-ADComputerExists:** Verifies that the computer object exists in Active Directory.
- **Test-ADComputerOU:** Verifies that the object is located in the expected organizational unit.
- **Test-DevicePrefix:** Verifies compliance with the required device-naming prefix.

Pester unit tests evaluate the functions using positive and negative test scenarios.

## Project Results

The capstone evaluation documented the following outcomes:

| Evaluation Area | Result |
|---|---|
| Laptop provisioning | 10 of 10 evaluated laptops successfully provisioned |
| Active Directory validation | 9 of 9 selected checks passed |
| Provisioning time – Manual | Approximately 180 minutes |
| Provisioning time – Autopilot | Approximately 80 minutes |
| Total provisioning time reduction | Approximately 55.6% |

Provisioning times represent the total elapsed installation, configuration, and waiting time.

Application installation and security configuration were also evaluated through Microsoft Intune. Additional validation across larger device samples is recommended.

## Challenges and Lessons Learned

A significant implementation challenge involved network connectivity during the Windows Out-of-Box Experience.

Troubleshooting identified firewall filtering that interfered with the provisioning process. After resolving the connectivity issue, the tested devices successfully completed the required deployment stages.

This experience highlighted the importance of network readiness, hybrid identity integration, systematic troubleshooting, and post-deployment validation.

## Repository Structure

- `design/architecture` – System architecture and design documentation
- `documentation` – Requirements, implementation, and evaluation documentation
- `evidence/screenshots` – Selected implementation and testing evidence
- `scripts/powershell` – PowerShell validation scripts
- `tests` – Automated testing materials and results

## Version Control

The project uses GitHub to maintain documentation and PowerShell scripts.

- `main` – Stable and reviewed project materials
- `development` – Development, revisions, and testing before merging into the main branch

## Security and Confidentiality

The public portfolio is intended for educational and professional demonstration.

Sensitive organizational information, including internal infrastructure identifiers, account information, credentials, and confidential configuration details, must be removed or anonymized before publication.

## Future Enhancements

Future improvements may include expanded deployment testing, additional automated validation, comprehensive security policy verification, and long-term operational monitoring.

## Academic Context

Developed as part of MSIT 5910, the capstone course in the Master of Science in Information Technology program at the University of the People.
