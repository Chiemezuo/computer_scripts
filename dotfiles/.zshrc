autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PROMPT='[%n@%m %1~]%F{green}(${vcs_info_msg_0_})%F{white}$ '
# Created by `pipx` on 2025-02-25 11:34:42
export PATH="$PATH:/Users/user/.local/bin"

# bun completions
[ -s "/Users/user/.bun/_bun" ] && source "/Users/user/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Aliases
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gps='git push'
alias gp='git pull'
alias ,,m='python manage.py migrate'
alias ,,mm='python manage.py makemigrations'
alias ,,r='python manage.py runserver'
alias ,,c='python manage.py createsuperuser'
alias ,,sh='python manage.py shell'

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/user/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
