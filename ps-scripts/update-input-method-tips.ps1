# Tries to ensure that the US English keyboard isn't repeatedly re-added to your list
# of keyboard layouts during updates and other such things by configuring your desired
# keyboard layout expressly.
#
# Might need registry/remove-keyboard-preload.reg to work properly.

# Determine which code you want by
# 1. Selecting it in the Language Settiongs
# 2. Running Get-WinUserLanguageList in PS
$keyboardLayout = '0409:0000040B'  # Finnish QWERTY

$languageList = Get-WinUserLanguageList
$languageList[0].InputMethodTips.Clear()
$languageList[0].InputMethodTips.Add($keyboardLayout)
Set-WinUserLanguageList -LanguageList $languageList -Force
