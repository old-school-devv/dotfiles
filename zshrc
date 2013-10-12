# git. from https://gist.github.com/mislav/1712320
parse_git_branch() {
  (command git symbolic-ref -q HEAD || command git name-rev --name-only --no-undefined --always HEAD) 2>/dev/null
}
 
#    show red star if there are uncommitted changes
parse_git_dirty() {
  if command git diff-index --quiet HEAD 2> /dev/null; then
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  else
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  fi
}
 
#    if in a git repo, show dirty indicator + git branch
git_custom_status() {
  local git_where="$(parse_git_branch)"
  [ -n "$git_where" ] && echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX${git_where#(refs/heads/|tags/)}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# config files for bash & zsh
source ~/dotfiles/bash/env
source ~/dotfiles/bash/aliases
source ~/dotfiles/bash/ssh_aliases

# colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
setopt prompt_subst

# history
HISTSIZE=100000
if (( ! EUID )); then
  HISTFILE=~/.history_root
else
  HISTFILE=~/.bash_history
fi
SAVEHIST=100000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

# prompt
if [[ $LANG == "de_DE.UTF-8" ]]; then
  ZSH_PROMPTI="∴"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[yellow]%}✗%{$fg[cyan]%}"
else
  ZSH_PROMPTI="$"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[yellow]%}*%{$fg[cyan]%}"
fi
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg_no_bold[cyan]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%} "

PROMPT='%{$fg_bold[green]%}%n%{$fg_bold[green]%}@%{$fg_bold[green]%}%m%{$fg_bold[blue]%}:%~ $(git_custom_status)%{$fg_no_bold[magenta]%}[$(~/.rvm/bin/rvm-prompt)]
%{$reset_color%}$ZSH_PROMPTI '

#path
export PATH=$HOME/bin:$PATH

#rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
