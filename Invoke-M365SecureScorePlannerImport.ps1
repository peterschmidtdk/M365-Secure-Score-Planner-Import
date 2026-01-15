<#
=========================================================================================
 Script Name   : Invoke-M365SecureScorePlannerImport.ps1
 Description   : Exports Microsoft 365 Secure Score (latest, history, control profiles)
                 to CSV and optionally imports Secure Score controls as Microsoft Planner
                 tasks in a selected M365 Group/Plan with dedupe + full logging.
 Author        : Peter Schmidt
 Created       : 2026-01-15
 Version       : 0.1

 Requirements  :
   - PowerShell 5.1+ / 7.x
   - Microsoft Graph PowerShell SDK modules:
       * Microsoft.Graph.Authentication
       * Microsoft.Graph.Security
       * Microsoft.Graph.Planner
   - Network access to Microsoft Graph

 Permissions (Delegated) :
   - SecurityEvents.Read.All   (Read M365 Secure Score) 
   - Tasks.ReadWrite           (Create/read Planner tasks)
   - Group.Read.All            (List M365 Groups and group plans)

 Output        :
   - .\Exports\  : CSV exports (Latest, History, Controls)
   - .\Logs\     : Transcript + CSV log

 Key Features  :
   - Secure Score export to CSV (Excel friendly)
   - Optional Planner import into a chosen M365 Group/Plan
   - Idempotent import (skips tasks already imported using [M365SS:<ControlId>] key)
   - Full logging (transcript + structured CSV log)

 Usage         :
   1) Install Graph SDK (once):
        Install-Module Microsoft.Graph -Scope CurrentUser
   2) Run:
        .\Export-M365SecureScore-ToPlanner.ps1
   3) Follow prompts for Planner target selection/creation

 Notes         :
   - Planner plans are contained in M365 Groups / Teams.
   - Task dedupe is based on ControlId embedded in the task title.
=========================================================================================
#>
