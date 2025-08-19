function genpass
    openssl rand -base64 25 | string trim -c=\n | fish_clipboard_copy
    echo "Password copied to clipboard 📋"
end
