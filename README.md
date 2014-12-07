# linter-scspell package

This is a **linter-scspell** plugin for [Linter](https://github.com/AtomLinter/Linter). It
is an interface to [scspell](https://pypi.python.org/pypi/scspell).

### Requirements
*Linter* package must be installed in order to use this plugin. If *Linter* is not
installed, please follow the instructions [here](https://github.com/AtomLinter/Linter).

### Installation
To use a plugin, you must ensure that `scspell` is installed on your
system.

Install [scspell](https://pypi.python.org/pypi/scspell) by typing the following
in a terminal:
   ```
   pip install git+git://github.com/myint/scspell.git
   ```

Install plugin by typing:
   ```
   $ apm install linter-scspell
   ```

### Settings
You can configure linter-scspell as nearly all [Atom](https://atom.io/) modules by editing *~/.atom/config.cson* (click *Open Your Config*
in *Atom* menu).
In configuration you can specify executable directory if node hasn't it in **$PATH**. Example:

```
'linter-scspell':
  'overrideDictionary': '/path/to/dictionary.txt'
```

### Screenshot
![img](https://raw.githubusercontent.com/spockNinja/linter-scspell/master/screenshot.png)

## Donation
[![Share the love!](https://chewbacco-stuff.s3.amazonaws.com/donate.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KXUYS4ARNHCN8)
