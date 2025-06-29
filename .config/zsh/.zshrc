# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gnzh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

source $ZSH/oh-my-zsh.sh

# fzf
if [ -x /usr/bin/fzf  ]
        then
                source /usr/share/fzf/key-bindings.zsh
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# alias
alias gfc="git fetch && git checkout"
alias uall="~/dev/robin-thoene/device-automation/arch/update.sh"
alias n="nvim ."
alias dotfiles='/usr/bin/git --git-dir=$HOME/dev/robin-thoene/dotfiles/ --work-tree=$HOME'

# env
export EDITOR=nvim
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.dotnet/tools"
PATH="$PATH:$HOME/go/bin"
