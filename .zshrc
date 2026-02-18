# show a gradient text on launch
echo -e "\e[1mFedora Workstation\e[0m" | lolcat -b -g 3c6eb4:00ffff
echo ""

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions fzf fzf-tab zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

alias cls='clear'

alias zshconfig="micro ~/.zshrc"
alias kittyconf="micro ~/.config/kitty/kitty.conf"

alias upd="sudo dnf upgrade --refresh"
alias dnf='dnf5'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# snapper
alias snpr='sudo snapper -c root create -d'
alias snph='sudo snapper -c home create -d'

alias snprs='sudo snapper -c root status'
alias snphs='sudo snapper -c home status'

alias snprd='sudo snapper -c root diff'
alias snphd='sudo snapper -c home diff'

alias snpupd='sudo snapper -c root create -d "before update" && sudo snapper -c home create -d "before update"'

# lsd
alias ls='lsd --group-directories-first'
alias ll='lsd -la --group-directories-first'
alias la='lsd -A --group-directories-first'
alias lt='lsd --tree'

# mods
alias modsconfig='mods --settings'

# --- Laravel/LAMP Stack Control ---
# Start the engine
alias lampp-start="sudo systemctl start httpd mysqld php-fpm"

# Stop the engine (save RAM when gaming)
alias lampp-stop="sudo systemctl stop httpd mysqld php-fpm"

# Restart (use this after changing php.ini or httpd.conf)
alias lampp-restart="sudo systemctl restart httpd mysqld php-fpm"

# Check health (Green = Good, Red = Error)
alias lampp-status="systemctl status httpd mysqld php-fpm"


# flatpak
alias fpi='flatpak install flathub'
alias fpu='flatpak update'
alias fpr='flatpak uninstall --delete-data'
alias fps='flatpak search'
alias fpl='flatpak list'

#dnf
alias di='sudo dnf5 install'
alias du='sudo dnf5 upgrade'
alias dr='sudo dnf5 remove'
alias ds='dnf5 search'
alias dl='dnf5 history list'

#glow
alias glow='glow -t'

#mods
alias chatshow='mods --show'
alias chatdel='mods --delete'
alias chattitle='mods --title'
alias chatlist='mods --list'
alias chatconfig='mods --settings'
alias chatcont='mods --continue'

#nano
alias nano='nano -/'

#pomo
alias pomoconfig="micro ~/.config/pomo/pomo.yaml"

#espanso
alias espconfig="micro .config/espanso/match/base.yml"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Catppuccin Macchiato theme for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

# Set fresh as the default editor
export EDITOR='micro'
export VISUAL='micro'

export HARLEQUIN_CONFIG_PATH="$HOME/.config/harlequin/profiles.toml"

export "MICRO_TRUECOLOR=1"

eval "$(atuin init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# opencode
export PATH=/home/stranger/.opencode/bin:$PATH
