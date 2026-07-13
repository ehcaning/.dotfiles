eval "$(starship init zsh)"
# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

alias ls="eza --icons=always -1 --group-directories-first"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@20/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@20/include"
export PATH=$PATH:$(go env GOPATH)/bin
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# bun completions
[ -s "/Users/ehcan/.bun/_bun" ] && source "/Users/ehcan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
