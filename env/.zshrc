# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/danie/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Oh-my-posh
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config /mnt/c/Users/danie/OneDrive/Documents/WindowsPowerShell/prompt.omp.json )"

# Zoxide Init
eval "$(zoxide init zsh)"
# Fzf init# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

if [[ -e /etc/wsl.conf && -z $TERM_PROGRAM ]]; then
    if [[ $(pwd) == "/mnt/c/Users/danie" ]]; then
        cd ~
    fi
fi

source ~/.zsh_profile
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[3~" delete-char
bindkey "\e[3;5~" delete-word
bindkey "\e[3;6~" backward-delete-word

export PATH=$PATH:~/Downloads/zig-0.13.0/
# curosr
export PATH=$PATH:/mnt/c/Users/danie/AppData/Local/Programs/cursor/resources/app/bin/
