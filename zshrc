LANG=zh_CN.UTF-8

autoload colors
colors
for color in BLACK RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval $color='%{$fg_bold[${(L)color}]%}'
done

FINISH="%{$terminfo[sgr0]%}"

RPROMPT=$(echo "$RED%D{%m月%d日}$CYAN%D{%H:%M:%S}$FINISH")
PROMPT=$(echo "$RED%n$WHITE: $CYAN%~ $FINISH")

setopt no_nomatch

bindkey "\e[f" forward-word
bindkey "\e[b" backward-word
bindkey "\e[2~" overwrite-mode
bindkey "\e[3~" delete-char
bindkey "\e[5~" history-search-backward
bindkey "\e[6~" history-search-forward

if [[ "$TERM" == "xterm-256color" ]]; then
    bindkey "\e[H" beginning-of-line
    bindkey "\e[F" end-of-line
fi


alias ls='ls --color=auto'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -ahl'
alias less='less -R'

export PAGER='less -R -s -i'
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH=/usr/local/opt/binutils/bin:$PATH
export PATH=/usr/local/opt/ed/libexec/gnubin:$PATH
export PATH=/usr/local/opt/findutils/libexec/gnubin:$PATH
export PATH=/usr/local/opt/gnu-indent/libexec/gnubin:$PATH
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
export PATH=/usr/local/opt/gnu-which/libexec/gnubin:$PATH
export PATH=/usr/local/opt/grep/libexec/gnubin:$PATH
export PATH=/usr/local/opt/make/libexec/gnubin:$PATH
export PATH=/usr/local/opt/bison/bin:$PATH
export PATH=/usr/local/opt/flex/bin:$PATH
export PATH=/usr/local/opt/file-formula/bin:$PATH
export PATH=/usr/local/opt/unzip/bin:$PATH

export PATH=~/miniconda3/bin:$PATH

export LDFLAGS="-L/usr/local/opt/binutils/lib:-L/usr/local/opt/bison/lib:/usr/local/opt/flex/lib"
export CPPFLAGS="-I/usr/local/opt/binutils/include:/usr/local/opt/flex/include"

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
