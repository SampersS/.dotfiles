# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

WOORD=$(hostname)
TOTAAL=0
for i in $(seq 1 $(echo -n $WOORD | wc -m));
do
	LETTER=$(expr substr $WOORD $i 1)
	TOTAAL=$(($TOTAAL+$(printf "%d\n" \'$LETTER\')))
done
KLEURID=$(($TOTAAL%15+1))
PS1="%F{$KLEURID}%m%f %F{10}%/%f%F{51}%#%f "

fastfetch --config ~/.config/fastfetch-cnf.jsonc

source ~/.pcrc

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey "5~" kill-word
alias ckr='ping 192.168.0.1' #router connection check
alias cki='ping 1.1.1.1' #internet check
alias ckd='ping google.com' #dns check
alias e='exit'
alias dc='sudo docker compose'
alias ll='ls -al'
alias cp='cp -i'
alias cls='clear'
alias pdtn='2>/dev/null'
