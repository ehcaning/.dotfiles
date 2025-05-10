# https://github.com/sharkdp/bat
alias cat 'bat'
abbr -a --position anywhere -- --help '--help | bat -plhelp'
abbr -a --position anywhere -- -h '-h | bat -plhelp'

# https://github.com/muesli/duf
alias df 'duf'

# https://github.com/eza-community/eza
alias ls 'eza --icons=always --group-directories-first --color=always --color-scale-mode=gradient --color-scale=all'
alias ll 'ls -l'
alias la 'ls -l -a'
alias llt 'ls --tree'

# https://github.com/bootandy/dust
alias du 'dust'

# https://github.com/rs/curlie
alias curl 'curlie'
