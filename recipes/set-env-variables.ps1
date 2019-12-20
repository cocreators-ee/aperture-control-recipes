# Modify user and machine-wide environments with user_env and machine_env
#
# E.g. if you set GIT_SSH variable for the user to C:\ProgramData\chocolatey\bin\PLINK.EXE it will
# make Git use Pageant from Chocolatey for SSH keys:
#
# user_env GIT_SSH C:\ProgramData\chocolatey\bin\PLINK.EXE

function user_env([string]$name, [string]$value) {
    [System.Environment]::SetEnvironmentVariable($name, $value, 'User')
    [System.Environment]::SetEnvironmentVariable($name, $value, 'Process')
}

function machine_env([string]$name, [string]$value) {
    [System.Environment]::SetEnvironmentVariable($name, $value, 'Machine')
    [System.Environment]::SetEnvironmentVariable($name, $value, 'Process')
}
