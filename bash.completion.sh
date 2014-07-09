_upseto()
{
  _script_commands="addRequirement delRequirement fulfillRequirements checkRequirements git"

  local cur prev
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )

  return 0
}
complete -o nospace -F _upseto upseto
