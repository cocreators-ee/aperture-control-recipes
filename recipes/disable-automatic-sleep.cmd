rem Disable monitor turning off automatically
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0

rem Disable automatic sleep
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0

rem Disable automatic hibernation
powercfg /change hibernate-timeout-ac 0
powercfg /change hibernate-timeout-dc 0
