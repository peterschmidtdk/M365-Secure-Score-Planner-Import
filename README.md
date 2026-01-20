# M365-Secure-Score-Planner-Import

** WORK IN PROGRESS **

**Invoke-M365SecureScorePlannerImport.ps1** is a PowerShell script that bridges the gap between **Microsoft 365 Secure Score** and **actionable security remediation** by exporting Secure Score data to CSV and optionally importing Secure Score controls as **Microsoft Planner tasks**.

The script is designed for **IT administrators, security teams, and consultants** who want to turn Secure Score recommendations into a **structured, trackable backlog** instead of leaving them as passive dashboard insights.

---

## ✨ What this script does

- Exports **Microsoft 365 Secure Score** data to CSV:
  - Latest Secure Score snapshot
  - Historical Secure Score trend
  - Full Secure Score control profiles (recommendations)
- Optionally imports Secure Score controls into **Microsoft Planner**
- Supports **interactive selection or creation** of:
  - Microsoft 365 Group
  - Planner Plan
  - Planner Bucket
- Ensures **idempotent imports**:
  - Tasks already imported are detected and skipped
- Provides **full logging** for auditing and troubleshooting

---
