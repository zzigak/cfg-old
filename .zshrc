eval "$(rbenv init - zsh)"
 echo 'export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"' >> ~/.zshrc
 echo 'export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"' >> ~/.zshrc


# ALIAS
alias ..="cd .."
alias nv="nvim"
# DOTFILES
alias config='/usr/bin/git --git-dir=/Users/zzigak/.cfg/ --work-tree=/Users/zzigak'

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# PATHS
#PATH="/Applications/MacPorts/Emacs.app/Contents/MacOS:$PATH"
PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
export PATH=$PATH:/usr/local/go/bin




# ZSH 

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
setopt HIST_FIND_NO_DUPS
# End of lines configured by zsh-newuser-install

autoload -Uz vcs_info
autoload -U compinit && compinit
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
#precmd() { vcs_info }
#zstyle ':vcs_info:git:*' formats '%b '

## zsh prompt setup
autoload -U colors && colors	# Load colors
setopt PROMPT_SUBST
PROMPT='%F{208}%n%f %F{38}in%f %F{magenta}%~ %f'
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{red}(%b)%r%f'
zstyle ':vcs_info:*' enable git

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# CONDA
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/zzigak/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zzigak/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zzigak/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/zzigak/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<





# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
