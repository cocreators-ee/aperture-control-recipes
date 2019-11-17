# E.g. if you set GIT_SSH variable to C:\ProgramData\chocolatey\bin\PLINK.EXE it will
# make Git use Pageant from Chocolatey for SSH keys:
# set_env GIT_SSH C:\ProgramData\chocolatey\bin\PLINK.EXE

function set_env([string]$name, $value) {
    $path = "env:\$name"
    if (Get-Item -Path $path) {
        Set-Item -Path $path -Value $value
    } else {
        New-Item -Path $path -Value $value
    }
}
