bld
copy \winddk\7600.16385.1\redist\wdf\amd64\WdfCoinstaller01009* objchk_win7_amd64\amd64
inf2cat /driver:objchk_win7_amd64\amd64 /os:7_x64

Signtool sign /v /s PrivateCertStore /n bgamari.com(Test) /t http://timestamp.verisign.com/scripts/timstamp.dll objchk_win7_amd64\amd64\ps2log.cat

signtool verify /pa /v /c objchk_win7_amd64\amd64\ps2log.cat objchk_win7_amd64\amd64\ps2log.inf

