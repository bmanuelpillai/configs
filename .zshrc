# Add Homebrew's executable directory to the front of the PATH
export PATH=/opt/homebrew/bin:$PATH
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Source powerlevel10k theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# Oh My Zsh update behavior
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# History settings
HIST_STAMPS="dd-mm-yyyy"

# Load plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions vi-mode)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Enable vim mode in the terminal
bindkey -v
# Custom widget to make Tab smarter:
# - If an autosuggestion is available, accept it.
# - Otherwise, trigger the standard file/command completion.
smart-tab() {
  if [[ -n "${ZSH_AUTOSUGGEST_SUGGESTION}" ]]; then
    zle autosuggest-accept
  else
    zle expand-or-complete
  fi
}
# Create the widget and bind it to Tab
zle -N smart-tab
bindkey '^I' smart-tab

# Change cursor shape for different vim modes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q' # Use block cursor for normal mode
  elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q' # Use beam cursor for insert mode
  fi
}
zle -N zle-keymap-select

# Initialize with beam cursor on startup
echo -ne '\e[5 q'

# Reset cursor when starting a new line
function zle-line-init {
  echo -ne '\e[5 q'
}
zle -N zle-line-init

# Set timeout to 0.1 seconds for more responsive mode switching
export KEYTIMEOUT=10

# Editor settings
export EDITOR='nvim'

# vim alias
alias v='nvim'
alias n='nvim'

# git aliases
alias lg='lazygit'

# r alias
alias r="radian"
alias R="radian"
# RSPH HPC Alias
alias myq='squeue -u bnmanue'
alias noderep1='sinfo -o '\''%n %e %m %a %c %C'\'' '
alias noderep2='sinfo --Node --long'
alias noderep3='scontrol show node'
# Enable Powerlevel10k configuration if it exists
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Enable zoxide
eval "$(zoxide init --cmd cd zsh)"

# Paths
export PATH="/Library/TeX/texbin:$PATH"

