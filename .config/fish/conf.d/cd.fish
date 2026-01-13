function cd
    builtin cd $argv
    and printf "--- %s ---\n" (pwd); ll
end
