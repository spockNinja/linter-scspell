linterPath = atom.packages.getLoadedPackage("linter").path

Linter = require "#{linterPath}/lib/linter"

class LinterSCSpell extends Linter
  @syntax: /.*/

  cmd: ['scspell',  '--report-only']

  executablePath: null

  linterName: 'scspell'

  # A regex pattern used to extract information from the executable's output.
  regex:
    '(.*?):(?<line>\\d+):(?<warning> )(?<message>.*?)\r?\n'

  constructor: (editor)->
    super(editor)

    @executableDirListener = atom.config.observe 'linter-scspell.executableDir', =>
      executableDir = atom.config.get 'linter-scspell.executableDir'

      if executableDir
        @executablePath = if executableDir.length > 0 then executableDir else null

    @overrideDictionaryListener = atom.config.observe 'linter-scspell.overrideDictionary', =>
      @updateCommand()

  destroy: ->
    @executableDirListener.dispose()
    @overrideDictionaryListener.dispose()

  updateCommand: ->
    cmd = ['scspell', '--report-only']

    dictOverride = atom.config.get 'linter-scspell.overrideDictionary'

    if dictOverride
      cmd.push "--override-dictionary=#{dictOverride}"

    @cmd = cmd

module.exports = LinterSCSpell
