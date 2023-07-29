alias ..="cd .."
PATH="$HOME/.emacs.d/bin:$PATH"
#PATH="/Applications/MacPorts/Emacs.app/Contents/MacOS:$PATH"
PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"



# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
setopt HIST_FIND_NO_DUPS

# End of lines configured by zsh-newuser-install
#
#
autoload -Uz vcs_info
autoload -U compinit && compinit
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
#precmd() { vcs_info }
#zstyle ':vcs_info:git:*' formats '%b '

## PROMPT SETUP
autoload -U colors && colors	# Load colors
setopt PROMPT_SUBST
#PROMPT='%F{green}%*%f %F{magenta}%n%f  %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
#PROMPT='%F{orange}%n%f %F{green} in %f %F{blue}%~%f'
#RPROMPT = '%F{red}${vcs_info_msg_0_}%f$'
PROMPT='%F{208}%n%f in %F{38}%~%f -> '

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{red}(%b)%r%f'
zstyle ':vcs_info:*' enable git




setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

export PATH=$PATH:/usr/local/go/bin

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias nv="nvim"


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



alias config='/usr/bin/git --git-dir=/Users/zzigak/.cfg/ --work-tree=/Users/zzigak'
