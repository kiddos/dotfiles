PROMPT='%{$reset_color%}%n%{$reset_color%}@%{$fg_bold[blue]%}%m%{$reset_color%} %{$fg[cyan]%}%26<...<%~%<<%{$reset_color%} $(git_prompt_info)%{$reset_color%}🚀 '

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"
