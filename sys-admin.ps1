# System Adminstrator Scripts
# Create several scripts that do the following.
# 1. Renames the computers and reboots the server.
# 2. Installs Active Directory and make the domain name yourname.net.
# 3. Write a script that imports all the students from the class in your domain with the full firstname and lastname.
# 4. Write a script that creates 7 groups and puts at least one users in each group from the class.
# 5. The groups should be named IT, HR, DevOps, Sales, Marketing, Finance, and Management.

# 1. Renaming Windows Server from EC2AMAZ-DINR4IQ to Thanos

Rename-Computer -NewName "Thanos" -Restart

# 2. Installing AD Management Tools

Add-WindowsFeature RSAT-AD-PowerShell

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# the next command requires strong pw of uppper/lower/alphanum/sp.chars & after it's successful, it will force a restart

Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath “C:\Windows\NTDS” -DomainMode “Win2012R2” -DomainName “sia.net” -DomainNetbiosName “DOMAIN_NAME” -ForestMode “Win2012R2” -InstallDns:$true -LogPath “C:\Windows\NTDS” -NoRebootOnCompletion:$false -SysvolPath “C:\Windows\SYSVOL” -Force:$true


