rem Tries to prevent Windows from automatically rebooting for updates
rem https://www.windowscentral.com/how-prevent-windows-10-rebooting-after-installing-updates

rem Go where the UpdateOrchestrator scheduled tasks configuration is
cd %windir%\System32\Tasks\Microsoft\Windows\UpdateOrchestrator

rem Replace the old UpdateOrchestrator Reboot task with a Reboot directory
rename Reboot Reboot.old
mkdir Reboot

rem Remove all permissions to the "Reboot" directory
icacls Reboot /deny "LOCAL SERVICE":FMWD
icacls Reboot /deny "SYSTEM":FMWD
icacls Reboot /deny %USERNAME%:FMWD
