#computers have been setup in a domain environment

#Before running this you will need to check services for WRM, have the WRM ports open in the firewall.



Copy-Item -Path C:\sysmon1 -Destination "\\10.0.2.15\C$" -Recurse



Invoke-Command -ComputerName client -ScriptBlock {
    c:\sysmon1\sysmon64.exe -i c:\sysmon1\sysmonconfig-export.xml 2>$null
}



