rem Define your Git user and email
git config --global user.name "Your Name"
git config --global user.email "email@example.com"

rem Disable automatic LF to CRLF conversion by Git, e.g. if you want to run .sh scripts
rem in VMs on your Windows machine, or just don't want Git to change your files.
git config --global core.autocrlf false
