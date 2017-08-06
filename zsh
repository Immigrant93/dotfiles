sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
