%dos%
set a="0"
wmic baseboard get SerialNumber > %a%.txt 
wmic baseboard get SerialNumber >> sn.txt
wmic bios get serialnumber >> %a%.txt 
wmic bios get serialnumber >> sn.txt

wmic baseboard get Manufacturer >> %a%.txt
wmic baseboard get Product >> %a%.txt
wmic baseboard get Version >> %a%.txt

wmic os get caption >> %a%.txt
wmic os get osarchitecture >> %a%.txt
wmic cpu get name >> %a%.txt
wmic memorychip get capacity >> %a%.txt
wmic diskdrive get caption >> %a%.txt
wmic nic get name >> %a%.txt
