Copy-Item -Path C:\sysmon1 -Destination "\\10.0.2.15\C$" -Recurse



Invoke-Command -ComputerName client -ScriptBlock {
    c:\sysmon1\sysmon64.exe -i c:\sysmon1\sysmonconfig-export.xml 2>$null
}



#check services for WRM

#also execution policy / running as admin