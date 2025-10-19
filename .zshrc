# ------------------------------
# Zsh Profiling (for testing only)
# ------------------------------
# zmodload zsh/zprof

# ------------------------------
# Locale
# ------------------------------
export LANG=en_GB.UTF-8

# ------------------------------
# Oh My Zsh and Theme
# ------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  zshmarks
)
source $ZSH/oh-my-zsh.sh

# ~/.zshrc — disable Powerlevel10k when Cursor Agent runs
if [[ -n "$CURSOR_AGENT" ]]; then
  # Skip theme initialization for better compatibility
else
  [[ -r ~/.p10k.zsh ]] && source ~/.p10k.zsh
fi

# ------------------------------
# Environment Variables
# ------------------------------
export SSH_KEY_PATH="$HOME/.ssh/id_rsa"
export NODE_ENV='development'
export FLASK_ENV='development'


# ------------------------------
# Aliases
# ------------------------------
alias g="jump"
alias s="bookmark"
alias d="deletemark"
alias p="showmarks"
alias l="showmarks"

alias dj='python manage.py'
alias djr='python manage.py runserver'
alias djrp='python manage.py runserver_plus'
alias djmm='python manage.py makemigrations'
alias djm='python manage.py migrate'
alias djs='python manage.py shell'
alias djsp='python manage.py shell_plus'

alias cat=ccat
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'     # dotfiles bare-repo helper
alias flush='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed'
alias http='http --verify=no'
alias md2doc='pandoc -o output.docx -f markdown -t docx'
alias server='php -S localhost:8080'
alias tm='task-master'                                          # https://www.task-master.dev/
alias yt2mp3="youtube-dl --extract-audio --audio-format mp3"


# ------------------------------
# VSCode Launch
# ------------------------------
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args "$@"; }

# ------------------------------
# Zsh Profiling (for testing only)
# ------------------------------
# zmodload zsh/zprof
# zprof

export HERD_PHP_84_INI_SCAN_DIR="/Users/jon/Library/Application Support/Herd/config/php/84/"
export HERD_PHP_83_INI_SCAN_DIR="/Users/jon/Library/Application Support/Herd/config/php/83/"
export HERD_PHP_82_INI_SCAN_DIR="/Users/jon/Library/Application Support/Herd/config/php/82/"
export HERD_PHP_81_INI_SCAN_DIR="/Users/jon/Library/Application Support/Herd/config/php/81/"
export HERD_PHP_80_INI_SCAN_DIR="/Users/jon/Library/Application Support/Herd/config/php/80/"
export HERD_PHP_74_INI_SCAN_DIR="/Users/jon/Library/Application Support/Herd/config/php/74/"
export HERD_PHP_85_INI_SCAN_DIR="/Users/jon/Library/Application Support/Herd/config/php/85/"

. "$HOME/.local/bin/env"
