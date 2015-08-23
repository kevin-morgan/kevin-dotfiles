# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------


# Gain Authority #
alias root="sudo -i"
alias su="sudo -i"
alias ss="sudo -s"
alias switch="sudo -i -u"

# Chmod Aliases #
alias mx="chmod a+x"
alias 000="chmod 000"
alias 644="chmod 644"
alias 755="chmod 755"
alias 700="chmod 700"

# Hash #
alias md5="openssl md5"
alias sha1="openssl sha1"


# Simple Encryption #
function blow() {
  [ -z "$1" ] && echo 'Encrypt: blow FILE' && return 1
    openssl bf-cbc -salt -in "$1" -out "$1.bf"
}
function fish() {
  test -z "$1" -o -z "$2" && echo \
    'Decrypt: fish INFILE OUTFILE' && return 1
    openssl bf-cbc -d -salt -in "$1" -out "$2"
}


