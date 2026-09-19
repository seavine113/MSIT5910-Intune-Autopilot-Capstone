# Required Windows Applications

The following Windows applications are included in the Microsoft Intune and Windows Autopilot pilot deployment scope. These applications represent the primary software packages required for standard workstation provisioning and will be evaluated during pilot deployment and validation.

## Deployment Approach

The required applications identified for the pilot will be packaged and deployed through Microsoft Intune using the **Windows app (Win32)** application type where appropriate. Detailed installation commands, detection rules, dependencies, and assignment settings will be documented during the implementation and testing phases of the project.

| Application | Purpose / Notes |
|---|---|
| **Absolute Computrace** | Laptop asset tracking and device recovery agent. |
| **Adobe Acrobat Reader** | Standard PDF reader. |
| **CrowdStrike Falcon Sensor** | Endpoint detection and protection/security agent. |
| **GlobalProtect VPN Client** | Palo Alto VPN client used for remote access. |
| **Imprivata Agent 25.1** | Imprivata authentication and single sign-on client. |
| **LobbyCentral Queue Notifier** | LobbyCentral notification client used with the departmental lobby queue system. |
| **Microsoft 365 Apps for Windows** | Installs Microsoft 365 desktop applications such as Word, Excel, Outlook, PowerPoint, Teams, and OneNote. |
| **Microsoft Silverlight** | Required for the legacy Service Manager / SharePoint help desk portal. |
| **uniFLOW SmartClient** | Installs the uniFLOW printing client and creates the Secure Print printer using the uniFLOW Universal Driver. |

## Validation

During pilot testing, application deployment will be reviewed for:

- Successful installation
- Correct application assignment
- Installation failures or dependencies
- Application functionality after provisioning
- Impact on the Autopilot provisioning process
