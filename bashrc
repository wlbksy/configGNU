if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]\[\033[01;35m\]\D{%m-%d %T}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

alias ls='ls -h --color=auto'
alias la='ls -a'
alias ll='la -l'

alias grep='grep --color=auto'
alias less='less -R'

export PAGER='less -R -s -i'
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export PATH=~/miniconda3/bin:$PATH

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
