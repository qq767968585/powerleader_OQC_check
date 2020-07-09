%dos%
set a="1"
wmic bios get serialnumber > %a%.txt 
wmic os get caption >> %a%.txt
wmic os get osarchitecture >> %a%.txt
wmic cpu get name >> %a%.txt
wmic memorychip get capacity >> %a%.txt
wmic diskdrive get caption >> %a%.txt
wmic nic get name >> %a%.txt
