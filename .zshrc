# show a gradient text on launch
echo -e "\e[1mFedora Workstation\e[0m" | lolcat -S $RANDOM
echo ""

fedora_greeting() {
    echo -e "\e[1mFedora Workstation\e[0m" | lolcat -S $RANDOM
}

# run the gradient text after typing clear
clear_and_greet() {
    command clear     
    fedora_greeting  
}

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

alias clear='clear_and_greet'
alias cls='clear_and_greet'

alias zshconfig="fresh ~/.zshrc"
alias alcrtconfig="fresh ~/.config/alacritty/alacritty.toml"

alias upd="sudo dnf upgrade --refresh"
alias dnf='dnf5'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias snp='sudo snapper -c root create --description'

alias ls='lsd'
alias ll='lsd -la'
alias la='lsd -A'


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


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Catppuccin Macchiato theme for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

# Set fresh as the default editor
export EDITOR='fresh'
export VISUAL='fresh'

export HARLEQUIN_CONFIG_PATH="$HOME/.config/harlequin/profiles.toml"

eval "$(atuin init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# opencode
export PATH=/home/stranger/.opencode/bin:$PATH
