export ZSH=/home/marinos/.oh-my-zsh
export EDITOR="vim"
ZSH_THEME="bureau"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias pb="curl -F c=@- https://ptpb.pw/\?u\=1"
alias :update="pacaur -Syu"
alias :install="pacaur -S"
alias :search="pacaur -Ss"
alias :remove="pacaur -R"
alias :purge="pacaur -Rsn"
alias :q="exit"

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export _JAVA_AWT_WM_NONREPARENTING=1

_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'

alias :stream="/usr/local/bin/stream"
alias :tarxz="/usr/local/bin/tarxz"
