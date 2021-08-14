##############################################################
# paths                                                      #
##############################################################

PATH="$PATH":"$HOME/.yarn/bin"
PATH="$PATH":"./node_modules/.bin"
BASE16_SHELL="$HOME/.config/base16-shell/"
NVM_DIR="$HOME/.nvm"

##############################################################
# load on start                                              #
##############################################################

# Load base16 shell helpers
[ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"