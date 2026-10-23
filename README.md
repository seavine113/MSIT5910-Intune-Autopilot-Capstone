# Microsoft Intune and Windows Autopilot Deployment
### MSIT 5910 – Master of Science in Information Technology Capstone Project

## Project Overview

This capstone project focuses on designing, implementing, and evaluating a standardized Windows device provisioning solution using Microsoft Intune and Windows Autopilot.

The project addresses the limitations of traditional manual workstation deployment by introducing centralized endpoint management, automated application deployment, security configuration, and post-deployment validation.

The solution integrates Microsoft cloud services with an existing on-premises Active Directory environment using Hybrid Microsoft Entra Join.

## Project Objectives

- Implement a standardized Windows device provisioning process.
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

The deployment workflow includes:

1. Windows device registration.
2. Assignment of deployment profiles and configuration policies.
3. Organizational authentication during Windows OOBE.
4. Offline Domain Join and Hybrid Microsoft Entra Join.
5. Microsoft Intune enrollment.
6. Application deployment and security configuration.
7. Post-deployment validation and monitoring.

The system architecture diagram is available in the `design/architecture` directory.

## Implementation and Validation

The implementation establishes a standardized provisioning process that integrates cloud-based endpoint management with existing organizational infrastructure.

A custom PowerShell validation script was developed to evaluate three Active Directory requirements:

- **Test-ADComputerExists:** Verifies that the computer object exists in Active Directory.
- **Test-ADComputerOU:** Verifies that the computer object is located in the expected organizational unit.
- **Test-DevicePrefix:** Verifies that the computer name complies with the required naming prefix.

Pester unit tests were developed to verify the validation functions using positive and negative test scenarios.

Microsoft Intune was also used to review application installation status, configuration assignments, and device management information.

## Project Results and Evaluation

The expanded evaluation included 10 successfully provisioned Windows devices.

| Evaluation Area | Results |
|---|---|
| Successfully provisioned devices | 10 |
| Manual provisioning time | Average of approximately 160 minutes across 5 deployments |
| Windows Autopilot provisioning time | Average of approximately 80 minutes across 10 devices |
| Provisioning time improvement | Approximately 50% reduction |
| Active Directory validation | Evaluated devices passed the selected post-deployment checks |
| Application deployment | Installation status evaluated through Microsoft Intune |
| Security configuration | BitLocker, Windows LAPS, and other management policies configured |

The provisioning-time comparison represents total elapsed deployment duration, including installation, configuration, and waiting time.

These findings demonstrate the feasibility and repeatability of the implemented solution within the evaluated environment.

The results should not be interpreted as a comprehensive measure of all possible deployment attempts or complete enforcement verification of every application and security policy.

## Challenges and Lessons Learned

One significant implementation challenge involved network connectivity during Windows Autopilot provisioning.

Troubleshooting identified firewall filtering that interfered with communication required during the Windows Out-of-Box Experience. After the connectivity issue was resolved, deployment testing successfully continued.

The project demonstrated several important lessons:

- Network connectivity must be validated before device provisioning.
- Hybrid identity integration requires coordination between cloud and on-premises infrastructure.
- Standardized configuration improves deployment consistency.
- Automated validation supports repeatable testing.
- Documentation and version control improve maintainability.

## Repository Structure

- `design/architecture` – System architecture and supporting design materials
- `documentation` – Requirements, implementation, evaluation, and technical documentation
- `evidence/screenshots` – Selected implementation and testing evidence
- `scripts/powershell` – PowerShell validation scripts
- `tests` – Automated unit tests and supporting results

## Version Control

GitHub supports version control for project documentation and infrastructure validation scripts.

The project uses development branches, commits, and pull requests to support controlled revisions and maintain stable project artifacts.

## Security and Confidentiality

This public portfolio is intended for educational and professional demonstration.

Sensitive organizational information, including credentials, internal server identifiers, tenant information, network addresses, and confidential configurations, must be removed or anonymized before publication.

## Limitations

Although the expanded evaluation demonstrated successful provisioning across 10 devices, testing was conducted within one organizational environment and a limited selection of hardware models.

Application installation and security-policy enforcement were not independently validated for every device through the PowerShell script.

Long-term reliability, department-wide scalability, and formal end-user acceptance remain outside the completed evaluation.

## Future Enhancements

Future improvements may include:

- Expanding testing to additional hardware models.
- Extending automated verification to Intune enrollment and application installation.
- Increasing security-policy validation coverage.
- Implementing additional reporting and monitoring.
- Evaluating long-term deployment reliability and maintainability.

## Academic Context

Developed as part of MSIT 5910, the capstone course in the Master of Science in Information Technology program at the University of the People.
