# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
# SHORTCUTS
# CD UTILITIES
# LIST UTILITIES
# HISTORY
# LOG
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



# ---------------------------------------------------------------------
# CD UTILITIES
# ---------------------------------------------------------------------

function cl {
	builtin cd "$@" && l
}
alias .4='cd ../../../../'
alias .5='cd ../../../../..'


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
# MISC UTILITIES
# ---------------------------------------------------------------------

alias path='echo -e "${PATH//:/\\n}"'
alias md='mkdir -pv'
alias showfuncs='typeset'

# alias fd='find . -type d -name'
# alias ff='find . -type f -name'


# ---------------------------------------------------------------------
# EDITOR
# ---------------------------------------------------------------------

alias vi='vim'
alias svi='sudo vi'
alias edit='vi'

if [[ "$OSTYPE" = darwin* ]]; then
  alias s='st .'
else
  #
fi
