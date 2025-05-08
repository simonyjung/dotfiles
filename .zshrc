export PATH="/Users/simonjung/.local/bin:$PATH"
alias docker_stop_containers='docker stop $(docker ps -aq) || true'
alias docker_prune_containers='docker_stop_containers && docker rm $(docker ps -aq) || true'
alias docker_prune_images='docker rmi --force $(docker images -q) || true'
alias docker_prune_volumes='docker volume rm $(docker volume ls -q) || true'
alias docker_quit=$'echo "Stopping OrbStack..." && orbctl shutdown && osascript -e \'quit app "OrbStack"\''

alias docker_nuke="docker_prune_containers && docker_prune_images && docker_prune_volumes && docker system prune -af --volumes && docker_quit"

# FastFetch
fastfetch -c "/Users/simonjung/.config/fastfetch/config.jsonc"


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/simonjung/.cache/lm-studio/bin"

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/simonjung/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Simon's alias
alias vim="nvim"
alias cat="bat"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Replace ls with eza
command -v eza >/dev/null &&
    # preferred listing
    alias ls='eza --color=always --group-directories-first --icons' &&
    # all files and dirs
    alias la='eza -a --color=always --group-directories-first --icons' &&
    # long format
    alias ll='eza -l --color=always --group-directories-first --icons' &&
    # tree listing
    alias lt='eza -aT --color=always --group-directories-first --icons' &&
    # show only dotfiles
    alias l.='eza -a | egrep"^\."' ||
    # Ls with with no exa
    alias ls='ls --color=always -lhsi --author'
eval "$(starship init zsh)"
