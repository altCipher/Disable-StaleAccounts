<#
    .SYNOPSIS
        Disables stale Active Directory accounts.
    .DESCRIPTION
        Disables Active Directory accounts that have been inactive for 
        a specified time period.  A custom AD parameter is set (DateDisabled).
        Accounts that remain inactive will be deleted automatically 
        after a specified time period.  A comma seperated value (CSV) 
        output is generated to record accounts disabled and deleted.
	.PARAMETER Path
        Specify the path of text (.txt) file contianing list of OUs to 
        monitor.
    .PARAMETER InactivePeriod
        Specify the number of days an account must be inactive before
        it is disabled. Default is 30 days.
    .PARAMETER DeletePeriod
        Specify the number of days an account must be disabled before
        it is deleted. This parameter is optional and accounts will 
        not be deleted if not specified.
	.INPUTS
		Text file list of Organization Units (OU), seperate by lines.
#>
[CmdletBinding(SupportsShouldProcess)]
	Param
	(
    	[parameter(Mandatory=$true)]
        [String] $Path,
        [parameter(Mandatory=$true)]
        [String] $InactivePeriod=30,
        [parameter(Mandatory=$false)]
        [String] $DeletePeriod
    )
Import-Module ActiveDirectory
Function Disable-Account
{

}
Function Remove-Account
{
	
}
# For-Each $OU Loop
# Get-ADUser user list inactive > $InactivePeriod to UserList array
# Disable Accounts
# Delete Accounts