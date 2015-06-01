module.exports =
  config:
    executableDir:
        type: 'string'
        default: ''
    overrideDictionary:
        type: 'string'
        default: ''

  activate: ->
    console.log 'activate linter-scspell'
