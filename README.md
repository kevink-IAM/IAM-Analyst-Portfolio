# IAM Analyst Technical Portfolio

## Overview
This portfolio highlights three focused Identity & Access Management (IAM) projects that demonstrate real-world skills across Microsoft Entra ID (Azure AD), Okta, and PowerShell automation.  
The work emphasizes secure authentication, governance cleanup, least-privilege enforcement, and identity lifecycle automation—core functions of a modern IAM Analyst.

---

## Key Technologies
- **Identity Providers:** Microsoft Entra ID (Azure AD), Okta  
- **Protocols:** SAML 2.0, OIDC, Microsoft Graph API  
- **Automation:** PowerShell, Graph API scripting  
- **Governance:** Least Privilege (PoLP), RBAC, Audit Logging  

---

# 📁 Project 1: Entra ID Governance & Access Cleanup

This project simulates an enterprise identity governance cleanup by removing risky direct administrative role assignments and replacing them with a standardized RBAC structure.

### 🎯 Goal
Eliminate high-risk direct role assignments and enforce a consistent, PIM-ready group-based access model.

### Key Outcomes
| Outcome | Skill Demonstrated |
|--------|--------------------|
| **Role Remediation** | Migrated direct admin access to RBAC security groups aligned with least privilege. |
| **Standardization** | Applied naming conventions and ownership metadata for audit readiness. |
| **Governance Validation** | Verified cleanup using Entra ID Audit Logs documenting successful role removals. |

### Artifacts
Located in the `Entra ID Governance` folder:
- Group naming standard screenshot  
- Audit log evidence of deprovisioned roles  

---

# 📁 Project 2: Okta SSO Integration (SAML 2.0)

This project demonstrates configuring Okta as the Identity Provider (IdP) to authenticate users into a test Service Provider using SAML 2.0.

### 🎯 Goal
Implement and validate a working SAML-based Single Sign-On (SSO) integration from Okta IdP to a third-party Service Provider.

### Key Outcomes
| Outcome | Skill Demonstrated |
|--------|--------------------|
| **Federation Setup** | Established the IdP/SP trust relationship via metadata exchange. |
| **Attribute Mapping** | Configured SAML attributes (NameID, email, groups) for identity accuracy. |
| **End-to-End Validation** | Captured a successful SAML assertion confirming proper authentication flow. |

### Artifacts
Located in the `Okta SSO` folder:
- Successful SAML assertion screenshot  

---

# 📁 Project 3: PowerShell MFA Audit Automation

This project automates MFA compliance auditing using PowerShell and the Microsoft Graph API.

### 🎯 Goal
Automate MFA status auditing across all Entra ID users to streamline compliance and reduce manual workload.

### Key Outcomes
| Outcome | Skill Demonstrated |
|--------|--------------------|
| **API Scripting** | Developed a least-privilege Graph API PowerShell script. |
| **Operational Efficiency** | Reduced MFA audit time from hours to minutes. |
| **Reporting Delivery** | Exported a clean, structured CSV report for compliance review. |

### Artifacts
Located in the `PowerShell Automation` folder:
- `Check-MFAStatus.ps1` (fully commented script)

---

# Summary & Impact
Across these projects, I demonstrated the ability to:
- Configure secure authentication flows (SSO, SAML)  
- Enforce identity governance and least privilege  
- Use audit logs for compliance validation  
- Automate identity tasks using PowerShell + Graph API  
- Work confidently across Entra ID and Okta environments  

These hands-on projects reflect the core responsibilities of an IAM Analyst in a cloud-forward organization.

---



