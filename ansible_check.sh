#!/bin/bash
# Vérifier si Ansible est installé
if ! which ansible > /dev/null; then
    echo "Ansible n'est pas installé. Installation en cours..."
    
    # Installer Ansible en utilisant apt-get (Debian/Ubuntu)
    if which apt-get > /dev/null; then
        sudo apt-get update
        sudo apt-get install -y ansible
    
    # Installer Ansible en utilisant yum (CentOS/RHEL)
    elif which yum > /dev/null; then
        sudo yum update
        sudo yum install -y ansible
    
    # Gérer les autres systèmes d'exploitation ici si nécessaire
    
    else
        echo "Impossible d'installer Ansible. Veuillez installer manuellement."
        exit 1
    fi
fi

echo "Ansible est installé."
