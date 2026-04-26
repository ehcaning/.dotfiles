function _append_grep
    set cmd (commandline)
    commandline -- "$cmd | grep "
    commandline -C (string length -- (commandline))
end

bind alt-g _append_grep

function _prepend_sudo
    commandline -- "sudo "(commandline)
    commandline -C (string length -- (commandline))
end

bind alt-u _prepend_sudo
