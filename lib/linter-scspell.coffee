linterPath = atom.packages.getLoadedPackage("linter").path

Linter = require "#{linterPath}/lib/linter"

class LinterSCSpell extends Linter
  @syntax: ['source.python', 'source.javascript']

  cmd: 'scspell'

  executablePath: null

  linterName: 'scspell'

  # A regex pattern used to extract information from the executable's output.
  regex:
    '(.*?):(?<line>\\d+):(?<col>\\d+): (?<message>\\.*?)\r?\n'

  constructor: (editor)->
    super(editor)

    atom.config.observe 'linter-scspell.executableDir', =>
      @executablePath = atom.config.get 'linter-scspell.executableDir'

    atom.config.observe 'linter-scspell.overrideDictionary', =>
      @updateCommand()

  destroy: ->
    atom.config.unobserve 'linter-scspell.overrideDictionary'
    atom.config.unobserve 'linter-scspell.executableDir'

  updateCommand: ->
    cmd = 'scspell'
    overrrideDictionary = atom.config.get 'linter-scspell.overrideDictionary'

    if overrideDictionary
      cmd += " --override-dictionary=#{overrideDictionary}"

    @cmd = cmd
module.exports = LinterSCSpell
