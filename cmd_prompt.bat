rem https://superuser.com/questions/761008/add-registry-key-entries-using-batch-file
rem http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-windows-command-line-and-registry/
rem https://stackoverflow.com/questions/12028372/how-to-change-command-line-prompt-in-windows

rem reg add "Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PROMPT /t REG_SZ /d ""

rem setx PROMPT "%date:~0,2%-%date:~3,2%-%date:~-4% %time:~0,2%:%time:~3,2%:%time:~6,2%$_$P$S$+$G"

rem set PROMPT "$D$S$T$_$P$S$+$G"

setx PROMPT "$D$S$T$_%username%@%computername%$S$P$S$_$+$G"

rem Directory for linux: C:\Users\pranas.ORADEV\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc\LocalState\rootfs

