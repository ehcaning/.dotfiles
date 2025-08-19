# https://sshuttle.readthedocs.io/en/stable/usage.html
function ssh_tunnel_iran
    set ARVAN_VM_USERNAME "$(op read -n 'op://Homelab/Arvan VM VPN/username')"
    set ARVAN_VM_HOSTNAME "$(op read -n 'op://Homelab/Arvan VM VPN/hostname')"
    alias ssh_tunnel_iran "sshuttle -r $ARVAN_VM_USERNAME@$ARVAN_VM_HOSTNAME 0.0.0.0/0"
end
