# Contribution guidelines

## How can I contribute?

1. [Reporting bugs or feature ideas](https://github.com/Lieturd/aperture-control-recipes/issues): It's definitely helpful to know what kind of problems people are having, or would like to see solved. Even if you yourself don't know the solutions, someone else might come up with one.
2. Creating recipes to the [Aperture Control Recipes](https://github.com/Lieturd/aperture-control-recipes) -collection
3. Spreading the word: The more people know of Aperture Control, the more time we save together, and the more likely it is for us to find more people able and willing to contribute more useful things.
4. Testing the scripts: See if the contributions work for you, and report if they don't.


## Recipes

Anything you contribute must be contributed with the license of Aperture Control, BSD 3-clause, or a more permissive license (e.g. CC-0, Public Domain, WTFPL). If no other license declaration is in the file when it is added, it is published with the BSD 3-clause license.

Additionally these rules apply to everything contributed here:

 - Nothing illegal or shady
 - Contributions should be generally useful, i.e. not specific to YOUR workflow
 - The task can be small or large, as long as it seems generic enough and doesn't do a lot of seemingly unrelated things, e.g. changing multiple unrelated settings should be done via multiple recipes, even if you might want all of them changed for yourself
 - Do not add any order numbers or similar into the scripts, whoever takes them into use will determine the order they want to run them in
 - If there's any prerequisites for the scripts, e.g. [Chocolatey](https://chocolatey.org/), make it clear in the script's comments
 - Try to stick to a max line length of 88 characters, unless absolutely necessary, also in recipe comments
 - Follow the [Code of Conduct](./CODE_OF_CONDUCT.md)

Feel free to [send PRs](https://github.com/Lieturd/aperture-control-recipes/pull/new/master) to add files to `cmd-scripts`, `ps-scripts`, and `registry`. However, try to ensure the filename gives a good idea as to what it is for, and add a "plain English" explanation about it in the `README.md`. Additionally if there's any extra details you need to explain, e.g. about how to determine the correct values for some variables, do so in the file with clear instructions.

In PowerShell files you can include comments by prefixing the comments with `#`, so:

```powershell
# This configures ...
```

In Cmd scripts you can include comments by prefixing the lines with `rem`, so:

```batch
rem This helps ...
```

In Registry files you can include comments (after the `Windows Registry Editor ...` line) by prefixing the comments with `;`, so:

```Windows Registry Entries
; This disables ...
```
