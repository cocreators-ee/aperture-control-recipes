# Enable Hyper-V feature
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Make current user a Hyper-V Administrator to avoid issues with e.g. minikube
net localgroup "Hyper-V Administrators" $env:USERNAME /add
