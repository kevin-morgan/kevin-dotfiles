# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------


# Confirmation & explain what is being done
if [[ "$OSTYPE" = darwin* ]]; then
  alias rm="rm -iv"
else
  alias rm="rm -iv --preserve-root"
fi
alias mv="mv -iv"
alias cp="cp -ivp" # Preserve the specified attributes
alias ln="ln -iv"

# Parenting changing permissions on / #
#alias chown="chown --preserve-root"
#alias chmod="chmod --preserve-root"
#alias chgrp="chgrp --preserve-root"
