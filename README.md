# Recipes for Aperture Control

This repository is a collection of scripts you might want in your setup of [Aperture Control](https://github.com/Lieturd/aperture-control).

See [Contributing Guidelines](./CONTRIBUTING.md) and [Code of Conduct](./CODE_OF_CONDUCT.md).

## Bug reports and improvements

If you find any bugs or have improvement ideas in any of the scripts, please [file an issue](https://github.com/Lieturd/aperture-control-recipes/issues) or [create a Pull Request](https://github.com/Lieturd/aperture-control-recipes/pull/new/master).

## List of recipes

- Set up global Git Configuration
  - [cmd-scripts/global-git-config.cmd](cmd-scripts/global-git-config.cmd)
- Install or update Chocolatey
  - [ps-scripts/install-chocolatey.ps1](ps-scripts/install-chocolatey.ps1)
- Install a number of Chocolatey and Scoop packages at once
  - [ps-scripts/install-packages.ps1](ps-scripts/install-packages.ps1)
- Install or update Scoop
  - [ps-scripts/install-scoop.ps1](ps-scripts/install-scoop.ps1)

**Windows settings and tweaks**

- Disable Aero shake to minimize windows
  - [registry/disable-aero-shake.reg](registry/disable-aero-shake.reg)
- Disable automatic reboot for upgrades
  - [cmd-scripts/disable-auto-reboot-for-updates.cmd](cmd-scripts/disable-auto-reboot-for-updates.cmd)
  - [registry/disable-auto-reboot-for-updates.reg](registry/disable-auto-reboot-for-updates.cmd)
- Disable automatic sleep and monitor timeouts
  - [cmd-scripts/disable-automatic-sleep.cmd](cmd-scripts/disable-automatic-sleep.cmd)
- Disable Autoplay dialogs
  - [registry/disable-aero-shake.reg](registry/disable-aero-shake.reg)
- Disable hibernation
  - [cmd-scripts/disable-hibernation.cmd](cmd-scripts/disable-hibernation.cmd)
- Disable Share Across Devices
  - [registry/disable-share-across-devices.reg](registry/disable-share-across-devices.reg)
- Disable Snap
  - [registry/disable-snap.reg](registry/disable-snap.reg)
- Disable Cortana and Bing searches in Start Menu
  - [registry/disable-start-menu-cortana-and-bing.reg](registry/disable-start-menu-cortana-and-bing.reg)
- Disable Tablet Mode
  - [registry/disable-tablet-mode.reg](registry/disable-tablet-mode.reg)
- Disable Timeline
  - [registry/disable-timeline.reg](registry/disable-timeline.reg)
- Allow enabling BitLocker without a TPM module
  - [registry/enable-bitlocker-without-tpm.reg](registry/enable-bitlocker-without-tpm.reg)
- Enable Dark Theme
  - [registry/enable-dark-theme.reg](registry/enable-dark-theme.reg)
- Enable Hyper-V and add user into Hyper-V Administrators
  - [ps-scripts/enable-hyper-v.ps1](ps-scripts/enable-hyper-v.ps1)
- Enhance Windows 10 Privacy by disabling a number of features
  - [cmd-scripts/enhance-windows-10-privacy.cmd](cmd-scripts/enhance-windows-10-privacy.cmd)
- Remove "Keyboard Preload" to try and avoid US English keyboard being added repeatedly
  - [registry/remove-keyboard-preload.reg](registry/remove-keyboard-preload.reg)
- Set persistent environment variables
  - [ps-scripts/set-env-variables.ps1](ps-scripts/set-env-variables.ps1)
- Create file associations from a filetype to given program
  - [ps-scripts/set-file-associations.ps1](ps-scripts/set-file-associations.ps1)
- Show file extension of known file types
  - [registry/show-file-extension.reg](registry/show-file-extension.reg)
- Show hidden and "protected system files"
  - [registry/show-hidden-and-protected-files.reg](registry/show-hidden-and-protected-files.reg)
- Tune Taskbar to remove Cortana, Task View, and Search, and disable showing on all monitors
  - [registry/taskbar-tuning.reg](registry/taskbar-tuning.reg)
- Update "Input Method Tips" to install only desired keyboard layouts
  - [ps-scripts/update-input-method-tips.ps1](ps-scripts/update-input-method-tips.ps1)
- Manipulate PATH - add, remove, and move items to the top/bottom of user and system-wide PATH
  - [ps-scripts/manipulate-path.ps1](ps-scripts/manipulate-path.ps1)

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

# License

Short answer: The contents of this repository are licensed with the BSD 3-clause -license.

Long answer: The license for this repository is in [LICENSE.md](./LICENSE.md), the other pieces of software installed by the recipes have varying other licenses that you need to be separately aware of.
