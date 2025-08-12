export PATH="$HOME/.local/bin:$PATH"
# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.cache/lm-studio/bin"
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

#############################################################
#     _    _ _                     
#    / \  | (_) __ _ ___  ___  ___ 
#   / _ \ | | |/ _` / __|/ _ \/ __|
#  / ___ \| | | (_| \__ \  __/\__ \
# /_/   \_\_|_|\__,_|___/\___||___/
#############################################################

# Dotfiles management command, wrapper for git
# Inspired by https://github.com/jesuswasrasta/dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Common Aliases (bash, zsh)
if [ -f ~/.config/.aliases ]; then
    . ~/.config/.aliases
fi

# MacOS specific aliases
if [[ "$OSTYPE" == "darwin"* ]]; then
    . ~/.config/.macos_aliases
fi

##############################################################
#  ____  _             _     _   _       
# / ___|| |_ __ _ _ __| |_  | | | |_ __  
# \___ \| __/ _` | '__| __| | | | | '_ \ 
#  ___) | || (_| | |  | |_  | |_| | |_) |
# |____/ \__\__,_|_|   \__|  \___/| .__/ 
#                                 |_|    
##############################################################

# FastFetch
fastfetch -c "$HOME/.config/fastfetch/config.jsonc"

# Starship prompt
eval "$(starship init zsh)"

# Fix kitty terminal issues
# https://wiki.archlinux.org/title/Kitty#Terminal_issues_with_SSH
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
export PATH="/Users/simonjung/.pixi/bin:$PATH"
