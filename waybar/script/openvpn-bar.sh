#!/bin/bash

SERVICE="openvpn-client@client-node1.service"

# Fonction pour afficher l'état actuel du VPN
show_status() {
    if systemctl is-active --quiet $SERVICE; then
        echo '{"text": "ON", "class": "vpn-on"}'
    else
        echo '{"text": "OFF", "class": "vpn-off"}'
    fi
}

# Vérifier si le script est appelé avec "toggle" pour changer l'état
if [ "$1" == "toggle" ]; then
    if systemctl is-active --quiet $SERVICE; then
        echo '{"text": "OFF", "class": "vpn-off"}'
        sudo systemctl start systemd-resolved.service
        sudo systemctl stop $SERVICE
    else
        echo '{"text": "ON", "class": "vpn-on"}'
        sudo systemctl stop systemd-resolved.service
        sudo systemctl start $SERVICE
    fi
else
    # Afficher le nouvel état
    show_status
fi


