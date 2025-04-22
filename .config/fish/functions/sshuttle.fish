set -Ux ARVAN_VM_USERNAME "ubuntu"
set -Ux ARVAN_VM_HOSTNAME "37.32.13.208"
alias ssh_tunnel_iran "sshuttle -r $ARVAN_VM_USERNAME@$ARVAN_VM_HOSTNAME 0.0.0.0/0"
