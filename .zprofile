# Composer global
export PATH="$HOME/.composer/vendor/bin:$PATH"

# MariaDB 10.6 keg
export PATH="/opt/homebrew/opt/mariadb@10.6/bin:$PATH"

# Postgres.app 14
export PATH="/Applications/Postgres.app/Contents/Versions/14/bin:$PATH"

# Homebrew (adds /opt/homebrew/{bin,sbin})
eval "$(/opt/homebrew/bin/brew shellenv)"

# Herd
export PATH="$HOME/Library/Application Support/Herd/bin:$PATH"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# mise shims LAST so they stay FIRST in PATH
export PATH="$HOME/.local/share/mise/shims:$PATH"

# ------------------------------
# SSH Key
# ------------------------------
ssh-add -q --apple-use-keychain "$SSH_KEY_PATH" 2>/dev/null
