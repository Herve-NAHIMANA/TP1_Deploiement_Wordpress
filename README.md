# TP1 - Créer des VM sur GCP à l’aide de terraform et déployer une application wordpress avec ansible
----------------------------------------------------------------------------------------------------------
### Objectif de ce TP
Le TP consiste à déployer deux instances sur GCP qui vont permettre d'héberger une application wordpress et sa base de données.
### Description des fichiers fournis
Pour réaliser ce TP, on a crée les fichiers et on les a regroupé dans les dossiers et sous dossiers(modules) comme suit:
- terraform
	- instance
		- instance.tf
		- variables.tf
	- vpc
		- variables.tf
		- vpc.tf
	- firewall
		- firewall.tf
		- variables.tf
	- service_account
		- account.tf
		- variables.tf
	- main.tf
	- variables.tf
	- terraform.tfvars
- ansible
	- templates
 		- wordpress.conf.j2 
	- ansible.cfg
	- gcp_compute.yml
	- group_vars.yml
	- nom_des_instances.txt
	- playbook_db.yml
	- playbook_wordpress.yml
 - deployment.sh

Le dossier **Terraform** regroupe tous les fichiers terraform nécessaire au déploiement des ressources gcp que nous allons utiliser dans ce projet.
Nous aurons besoins des ressources gcp compute engine d'où le sous dossier **instance** qui est utilisé pour créer les machines virtuelles sur gcp, le sous dossier **vpc** est utilisé pour créer un réseau virtuel(Virtual Private Cloud) et un sous-réseau, le **firewall** pour un pare-feu afin de pouvoir autoriser le traffic entrant vers nos VMs.
Enfin le **service_account** est utilisé pour créer un compte de service et de donner les droits nécessaire pour que la recolte dynamique des instances provisionné par ansible soit possible.
Le fichier **main.tf** est un fichier principale pour terraform, variables regroupe tous variables utilisés dans les fichiers terraform du projet.
### Description des pré-requis

### Schema de présentation du déploiement

### Configuration es scripts pour chaque client
