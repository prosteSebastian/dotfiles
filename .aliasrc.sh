alias gen-pass="date +%s | sha256sum | base64 | head -c 32 ; echo"

alias gppo='g++ --std=c++17 -Wall -pedantic -Wno-long-long -g -fno-omit-frame-pointer -Wunused-variable -Wtrigraphs -trigraphs -O0'
alias gpp='g++ --std=c++17 -Wall -pedantic -Wno-long-long -g -fno-omit-frame-pointer -Wunused-variable -Wtrigraphs -trigraphs -O2'
alias go='git open'
alias kill-window='xprop _NET_WM_PID | sed "s/.*=//g" | xargs kill -9'
alias hypconf='vim ~/.config/hypr/hyprland.conf' 
alias barconf='vim ~/.config/waybar/config.jsonc' 
alias du='ncdu'
alias df='duf'
alias ps='procs'
alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias wbr='killall waybar ; waybar & disown'

gdb-clear () {
    rm -rf ~/.gdbinit
}


alias ssh-key="ssh -i ~/.ssh/OpenSSH_key "
alias ssh-pie="ssh-key root@10.8.0.2"
#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
alias ls='lsd'
alias l='lsd -Fh'     #size,show type,human readable
alias la='lsd -AFh'   #long list,show almost all,show type,human readable
alias lla='lsd -lAFh'   #long list,show almost all,show type,human readable
alias ll='lsd -lh'      #long list
alias ldot='lsd -hld .*'

alias cat='bat -p '


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkd='mkdir -pv'

alias mysql="mycli -u root"

alias sc="systemctl"

alias fun="lolcat"

alias j="z"
alias svim="sudoedit"
