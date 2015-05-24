source $HOME/.bin/git-completion.sh
source $HOME/.bin/npm-completion.sh

export ALTERNATE_EDITOR=""
export PROMPT_DIRTRIM=3
export DISPLAY=:1
export EDITOR="emacsclient --tty"
export GPG_TTY=$(tty)
export LANG="en_US"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export HISTFILESIZE=20000

if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
fi

if [[ $(uname) == Darwin ]]; then
  source /usr/local/etc/bash_completion.d/password-store
fi

source "/usr/local/share/chruby/chruby.sh"
chruby 2.1.5

### local config settings, if any

if [ -e $HOME/.bashrc.local ]; then
  source $HOME/.bashrc.local
fi
