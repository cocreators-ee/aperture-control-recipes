# Install a number of packages from Chocolatey or Scoop
# Depends on Chocolatey or Scoop being installed

# Find packages at https://chocolatey.org/packages
choco.exe install -y `
    package-1 `
    package-2 `
    # This non-empty line is important, do not move it

# To add any buckets you might need for Scoop, add e.g.:
# scoop.cmd bucket add extras
# List of known buckets: https://github.com/lukesampson/scoop#known-application-buckets

# Find packages at e.g. https://github.com/ScoopInstaller/Main/tree/master/bucket
scoop.cmd install `
    package-1 `
    package-2 `
    # This non-empty line is important, do not move it
