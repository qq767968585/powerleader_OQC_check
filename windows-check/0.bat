%dos%
set a="0"

wmic baseboard get SerialNumber >> sn.txt
wmic bios get serialnumber >> sn.txt

wmic baseboard list full > %a%.txt
wmic bios list full >> %a%.txt

wmic os get caption >> %a%.txt
wmic os get osarchitecture >> %a%.txt
wmic cpu get name >> %a%.txt
wmic memorychip get capacity >> %a%.txt
wmic diskdrive get caption >> %a%.txt
wmic nic get name >> %a%.txt
