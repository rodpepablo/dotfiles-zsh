
# Load every config file in the private folder
for conf in "$HOME/.config/zsh/private/"*.zsh; do
    source "${conf}"
done
unset conf

# ZSH basic theme and standard plugins
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

# My zsh plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

# My aliases
alias c=clear
alias ff='nvim $(fzf -m --preview="bat --color=always {}")'

