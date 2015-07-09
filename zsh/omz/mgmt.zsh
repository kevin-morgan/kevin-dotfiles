# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
# CONFIGURATION
# ---------------------------------------------------------------------

if [[ "$OSTYPE" = darwin* ]]; then
  alias dots='st ~/.dotfiles'
  alias reload='source ~/.zshrc && echo "sourced ~/.zshrc"'
else
  alias dots='cd ~/.dotfiles && vim'
  alias reload='source ~/.zshrc && echo "sourced ~/.zshrc"'
fi

# ---------------------------------------------------------------------
# HOSTS
# ---------------------------------------------------------------------

alias vhosts='sudo vi /etc/hosts'
alias shosts='st /etc/hosts'
