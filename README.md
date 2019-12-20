# Recipes for Aperture Control

This repository is a collection of scripts you might want in your setup of [Aperture Control](https://github.com/Lieturd/aperture-control).

See [Contributing Guidelines](./CONTRIBUTING.md) and [Code of Conduct](./CODE_OF_CONDUCT.md).


## Bug reports and improvements

If you find any bugs or have improvement ideas in any of the scripts, please [file an issue](https://github.com/Lieturd/aperture-control-recipes/issues) or [create a Pull Request](https://github.com/Lieturd/aperture-control-recipes/pull/new/master).


## List of recipes

- Install or update Chocolatey
  - [recipes/install-chocolatey.ps1](recipes/install-chocolatey.ps1)
- Install a number of Chocolatey and Scoop packages at once
  - [recipes/install-packages.ps1](recipes/install-packages.ps1)
- Install or update Scoop
  - [recipes/install-scoop.ps1](recipes/install-scoop.ps1)
- Install Windows Subsystem for Linux + Ubuntu 18.04 LTS
  - [recipes/install-wsl.ps1](recipes/install-wsl.ps1)

**Windows settings and tweaks**

- Disable Aero shake to minimize windows
  - [recipes/disable-aero-shake.reg](recipes/disable-aero-shake.reg)
- Disable automatic reboot for upgrades
  - [recipes/disable-auto-reboot-for-updates.cmd](recipes/disable-auto-reboot-for-updates.cmd)
  - [recipes/disable-auto-reboot-for-updates.reg](recipes/disable-auto-reboot-for-updates.cmd)
- Disable automatic sleep and monitor timeouts
  - [recipes/disable-automatic-sleep.cmd](recipes/disable-automatic-sleep.cmd)
- Disable Autoplay dialogs
  - [recipes/disable-aero-shake.reg](recipes/disable-aero-shake.reg)
- Disable hibernation
  - [recipes/disable-hibernation.cmd](recipes/disable-hibernation.cmd)
- Disable Share Across Devices
  - [recipes/disable-share-across-devices.reg](recipes/disable-share-across-devices.reg)
- Disable Snap
  - [recipes/disable-snap.reg](recipes/disable-snap.reg)
- Disable Cortana and Bing searches in Start Menu
  - [recipes/disable-start-menu-cortana-and-bing.reg](recipes/disable-start-menu-cortana-and-bing.reg)
- Disable Tablet Mode
  - [recipes/disable-tablet-mode.reg](recipes/disable-tablet-mode.reg)
- Disable Timeline
  - [recipes/disable-timeline.reg](recipes/disable-timeline.reg)
- Allow enabling BitLocker without a TPM module
  - [recipes/enable-bitlocker-without-tpm.reg](recipes/enable-bitlocker-without-tpm.reg)
- Enable Dark Theme
  - [recipes/enable-dark-theme.reg](recipes/enable-dark-theme.reg)
- Enable Hyper-V and add user into Hyper-V Administrators
  - [recipes/enable-hyper-v.ps1](recipes/enable-hyper-v.ps1)
- Enhance Windows 10 Privacy by disabling a number of features
  - [recipes/enhance-windows-10-privacy.cmd](recipes/enhance-windows-10-privacy.cmd)
- Remove "Keyboard Preload" to try and avoid US English keyboard being added repeatedly
  - [recipes/remove-keyboard-preload.reg](recipes/remove-keyboard-preload.reg)
- Set persistent environment variables
  - [recipes/set-env-variables.ps1](recipes/set-env-variables.ps1)
- Create file associations from a filetype to given program
  - [recipes/set-file-associations.ps1](recipes/set-file-associations.ps1)
- Show file extension of known file types
  - [recipes/show-file-extension.reg](recipes/show-file-extension.reg)
- Show hidden and "protected system files"
  - [recipes/show-hidden-and-protected-files.reg](recipes/show-hidden-and-protected-files.reg)
- Tune Taskbar to remove Cortana, Task View, and Search, and disable showing on all monitors
  - [recipes/taskbar-tuning.reg](recipes/taskbar-tuning.reg)
- Update "Input Method Tips" to install only desired keyboard layouts
  - [recipes/update-input-method-tips.ps1](recipes/update-input-method-tips.ps1)
- Manipulate PATH - add, remove, and move items to the top/bottom of user and system-wide PATH
  - [recipes/manipulate-path.ps1](recipes/manipulate-path.ps1)

**Software configuration**
- Set up global Git Configuration
  - [recipes/global-git-config.cmd](recipes/global-git-config.cmd)
- Set up pyenv-win
  - [recipes/setup-pyenv.ps1](recipes/setup-pyenv.ps1)
- Configure ConEmu
  - [recipes/setup-conemu.ps1](recipes/setup-conemu.ps1)

## How to make registry patches

One way is figuring out what changes in your registry when you do changes. You can do that by exporting your registry before and after the change and then diffing the changes.

Create e.g. `C:\temp` for storing registry dumps and then run in a terminal window (and accept UAC dialog):

```batch
rem Full path is required even if you are in the folder due to how regedit works
regedit /e c:\temp\export.reg
```

Try to quickly do your changes (as Windows registry is constantly changed by automated things), and run the command again with a different filename.

```batch
rem Full path is required even if you are in the folder due to how regedit works
regedit /e c:\temp\changes.reg
```

Then open the two files in e.g. [WinMerge](https://winmerge.org) (tested to be able to deal with a few hundred megabyte diffs easily), and try and identify the relevant bits.

Alternatively you can try to e.g. identify the changes via [Process Monitor](https://docs.microsoft.com/en-us/sysinternals/downloads/procmon) or other such tools, or check out guides on the internet for how to perform the changes in Regedit, follow them, and then export the relevant keys.


## Testing

Trying out your recipes in a clean Windows installation such as on a VM from [https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/) is a good idea.


# License

Short answer: The contents of this repository are licensed with the BSD 3-clause -license.

Long answer: The license for this repository is in [LICENSE.md](./LICENSE.md), the other pieces of software installed by the recipes have varying other licenses that you need to be separately aware of.
