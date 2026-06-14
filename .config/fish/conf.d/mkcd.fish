# create a directory and cd into it
function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

alias take mkcd
