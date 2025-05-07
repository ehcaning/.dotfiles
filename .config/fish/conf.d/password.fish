function genpass
    openssl rand -base64 25 | string trim -c=\n | fish_clipboard_copy
end
