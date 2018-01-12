local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

local divider="_"
for i in {3..$COLUMNS}; do
  divider="${divider}_"
done

PROMPT='
%{$fg_bold[green]%}$divider
${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
${ret_status} %{$reset_color%}'

RPROMPT='[%T]'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[yellow]%}✓"
