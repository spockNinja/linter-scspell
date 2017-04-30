# linter-scspell package

This is a **linter-scspell** plugin for [Linter](https://github.com/AtomLinter/Linter).
It is an interface to [scspell](https://pypi.python.org/pypi/scspell).

### Requirements
*Linter* package must be installed in order to use this plugin.
If *Linter* is not installed, it will be installed automatically after this package is installed and enabled.

### Installation
To use this plugin, you must ensure that `scspell` is installed on your system.

Install [scspell](https://pypi.python.org/pypi/scspell) by typing the following in a terminal:
   ```
   pip install scspell3k
   ```

You can then install this plugin via the atom package manager, or by typing:
   ```
   $ apm install linter-scspell
   ```

### Settings
You can configure linter-scspell either by editing *~/.atom/config.cson* (click *Open Your Config* in *Atom* menu)
or updating the Settings for this package.

You can specify an executable path if scspell is not installed at `/usr/local/bin`. Example:
```
'linter-scspell':
  'executablePath': '/path/to/scspell'
```

You can also specify a path to a custom dictionary:
```
'linter-scspell':
  'overrideDictionary': '/path/to/dictionary.txt'
```
(Running `scspell --export-dictionary=FILE` will give you the default dictionary, which can then be tweaked to your liking.)

### Screenshot
![img](https://raw.githubusercontent.com/spockNinja/linter-scspell/master/screenshot.png)
