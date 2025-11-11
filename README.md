# IAM Analyst Technical Portfolio: Proven Results

## Overview

This portfolio documents three high-impact projects that demonstrate core technical proficiencies required of a modern Identity and Access Management (IAM) Analyst. The focus is on implementing secure, governed, and automated access solutions across major identity platforms.

### Key Technologies Used

* **Identity Providers (IdP):** Microsoft Entra ID (Azure AD), Okta
* **Protocols:** SAML 2.0, Microsoft Graph API
* **Automation:** PowerShell Scripting
* **Governance:** Principle of Least Privilege (PoLP), Audit Logging

---

## Project 1: Entra ID Governance

This project simulates an enterprise governance cleanup in Microsoft Entra ID, focusing on removing risky direct administrative roles and enforcing a standardized, PIM-ready access model.

**Goal:** Clean up security vulnerabilities by removing direct administrative role assignments and implementing a standardized, group-based access model in Entra ID.

| Key Outcome | Analyst Skill Demonstrated |
| :--- | :--- |
| **Role Remediation** | Successfully moved access control from individual users (violating PoLP) to a managed security group, preparing the environment for **PIM** (Privileged Identity Management). |
| **Standardization** | Applied a clear, auditable naming convention and included ownership details in the group description for immediate compliance checks. |
| **Compliance Proof** | Used Entra ID Audit Logs to confirm the successful de-provisioning (removal) of the original direct role assignments, completing the governance cleanup. |

### Artifacts (Stored in the `Entra ID Governance` folder)

* **Group Standardization Screenshot:** Proof of compliant group naming and description.
* **De-provisioning Audit Log:** Audit trail confirming the role removal action.

---

## Project 2: Okta SSO

This project demonstrates cross-platform identity federation by configuring Okta as the Identity Provider (IdP) to seamlessly authenticate users into a third-party application using SAML 2.0.

**Goal:** Configure and validate a successful Single Sign-On (SSO) integration using **SAML 2.0**, connecting Okta as the Identity Provider (IdP) to a test Service Provider (SP).

| Key Outcome | Analyst Skill Demonstrated |
| :--- | :--- |
| **Federation Setup** | Configured the trust relationship by exchanging metadata, ensuring the IdP and SP could securely communicate. |
| **Attribute Mapping** | Precisely mapped required user claims and attributes within Okta to ensure the receiving application got the correct identity data. |
| **Validation** | Executed and captured the successful SAML assertion, confirming end-to-end user authentication was seamless. |

### Artifacts (Stored in the `Okta SSO` folder)

* **SAML Assertion Success Screenshot:** Visual proof of the successful cross-platform authentication flow.

---

## Project 3: PowerShell Automation

This project focuses on leveraging Microsoft Graph API scripting to automate a common, high-volume security task, drastically improving operational efficiency and reporting capabilities.

**Goal:** Develop and execute a production-grade PowerShell script to automate a common security compliance task: auditing Multi-Factor Authentication (MFA) status for all users in Entra ID.

| Key Outcome | Analyst Skill Demonstrated |
| :--- | :--- |
| **API Scripting** | Wrote a robust script that connects securely to the **Microsoft Graph API** using the minimum necessary scopes. |
| **Operational Efficiency** | Automated a task (MFA Audit) that would typically take hours via the GUI, transforming it into a single, executable script. |
| **Data Delivery** | Used PowerShell objects and export commands to deliver a clean, structured CSV report, ready for security team review. |

### Artifacts (Stored in the `PowerShell Automation` folder)

* **`Check-MFAStatus.ps1`:** The fully commented, executable script code.

---

## Impact Summary

These projects demonstrate my proven ability to **implement secure IAM workflows**, automate compliance tasks, and **enforce governance** across Microsoft and Okta platforms. They reflect the core responsibilities of a modern IAM Analyst operating in real-world enterprise environments.


Remember to use the **Preview tab** on GitHub to confirm the perfect formatting before you commit the changes. Once you hit commit, your portfolio is done!
