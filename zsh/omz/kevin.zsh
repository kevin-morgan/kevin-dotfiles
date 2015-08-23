# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------

# ---------------------------------------------------------------------
# SHORTCUTS
# CD UTILITIES
# LIST UTILITIES
# HISTORY
# LOG
# EDITOR
# PACKAGING
# TMUX
# MISC UTILITIES
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
# SHORTCUTS
# ---------------------------------------------------------------------

if [[ '$OSTYPE' = darwin* ]]; then
  alias o='open'
  alias oo='open .'
else
  #
fi
alias c='clear'
alias lc='clear && l'
alias f='find . -iname'
alias grep='grep -in --color=auto'
alias m='less'
alias more='less'
alias job='jobs -l'
#alias g="grep "

# Ansible aliases.
alias an='ansible'
alias ap='ansible-playbook'


# ---------------------------------------------------------------------
# CD UTILITIES
# ---------------------------------------------------------------------

function cl {
	builtin cd "$@" && l
}
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias home='cd ~'
alias back='cd $OLDPWD'


# ---------------------------------------------------------------------
# LIST UTILITIES
# ---------------------------------------------------------------------
if [[ "$OSTYPE" = darwin* ]]; then
  alias tt="echo this is mac"
else
  alias lx="l -BX" # sort by extension.
  alias lxr="l -BXr" # sort by extension reversed.
fi
alias ld="l | grep '^d'" # list all directories.
alias lg="l | grep" # list & grep.
alias lz="l -S" # sort by size.
alias lzr="l -Sr" # sort by size reversed.
alias lt="l -t" # sort by date.
alias ltr="l -tr" # sort by date reversed.
alias lr="l -AHR" # list files recursively, with links are followed.
alias l.="l -d .*" # list all donfiles with directories are listed as plain files (not searched recursively).


# ---------------------------------------------------------------------
# HISTORY
# ---------------------------------------------------------------------

alias h="history"
alias h25="h 25"
alias hg="h | grep"


# ---------------------------------------------------------------------
# LOG
# ---------------------------------------------------------------------

alias t='tail -f'
alias tf='tail -F -n 100'
alias systail='tail -f /var/log/system.log'


# ---------------------------------------------------------------------
# EDITOR
# ---------------------------------------------------------------------

alias svi='sudo vi'
alias edit='vi'

if [[ "$OSTYPE" = darwin* ]]; then
  alias s='st .'
else
  #
fi


# ---------------------------------------------------------------------
# PACKAGING
# ---------------------------------------------------------------------

if [[ $OSTYPE == linux-gnu ]]; then
  
elif [[ $OSTYPE == darwin* ]]; then
  
fi
if [[ '$OSTYPE' = darwin* ]]; then
  alias update='brew update'
  alias install='brew install'
  alias remove='brew remove'
  alias upgrade='brew upgrade'
else
  alias update='sudo aptitude update'
  alias install='sudo aptitude install'
  alias remove='sudo aptitude remove'
  alias upgrade='sudo aptitude upgrade'
fi


# ---------------------------------------------------------------------
# TMUX
# ---------------------------------------------------------------------

alias tmac1='tmux new -s MAC-1'
alias tmac2='tmux new -s MAC-2'
alias ts1='tmux new -s SAKURA-1'
alias ts2='tmux new -s SAKURA-2'
alias tl1='tmux new -s LINODE-1'
alias tl2='tmux new -s LINODE-2'
alias ta1='tmux new -s AWS-1'
alias ta2='tmux new -s AWS-2'


# ---------------------------------------------------------------------
# MISC UTILITIES
# ---------------------------------------------------------------------

alias path='echo -e "${PATH//:/\\n}"'
alias md='mkdir -pv'
alias showfuncs='typeset'

# alias fd='find . -type d -name'
# alias ff='find . -type f -name'

# Sorted size
alias 'dus=du -sckx * | sort -nr'

alias 'bk=cd $OLDPWD'


