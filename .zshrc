# Basic ZSH configuration
export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git docker docker-compose aws mvn npm osx python web-search)

source $ZSH/oh-my-zsh.sh
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export DEV=TRUE

if ! { [ "$TMUX" != ""]; } then
	tmux
	clear
fi 


# Aliases
# dieval="eval docker images -f dangling=true -q"
# dimages="docker rmi $(dieval)"
alias sp="spotify"
alias vim="nvim"
# alias dockerrmi="docker rmi $dimages"
alias whatzur='cd "/Users/alex/Google Drive/AKA Software/Projects/whatzur"'
alias school='cd "/Users/alex/Google Drive/School/Fall 2017"'

# Extra plugin setup

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "/Users/alex/.gvm/scripts/gvm" ]] && source "/Users/alex/.gvm/scripts/gvm"

# Google CLI
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alex/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/alex/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alex/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/alex/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# iTerm2 Intergration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# added by travis gem
[ -f /Users/alex/.travis/travis.sh ] && source /Users/alex/.travis/travis.sh
