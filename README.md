# TP1 - Créer des VM sur GCP à l’aide de terraform et déployer une application wordpress avec ansible
----------------------------------------------------------------------------------------------------------
### Objectif de ce TP
Le TP consiste à déployer deux instances sur GCP qui vont permettre d'héberger une application wordpress et sa base de données.
### Dossiers et fichiers que contient ce TP
Pour réaliser ce TP, on a crée les fichiers et on les a regroupé dans les dossiers et sous dossiers comme suit:
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

Le dossier **ansible** regroupe le fichier de configuration de ansible, le fichier utilisé pour recolter dynamiquement les instances pour l'inventaire ansible, le fichier qui contient les variables(user, password, ..) pour la base de données et d'autres fichiers(playbooks) utilisés pour provisionner les machines créées par terraform.

Le fichier **deployment.sh** est utilisé pour lance le deploiement complet.
### Pré-requis
- Avoir un compte GCP
- Avoir une machine qui tourne sur linux(Teste sur Ubuntu les autres distributions il faudra adapter le code) ou utilise google cloud shell
	- ##### Pour une machine sous Linux(Ubuntu):
		- Avoir python3, pip3 et google-auth requests installés, si ce n'est pas le cas voici les paquets à installer
  
    		`sudo apt install python3`
    
    		`sudo apt install python3-pip`
    
    		`sudo pip install ansible google-auth requests`
      -  Avoir Installé gcloud cli. [Suivez le lien pour l'installer](https://cloud.google.com/sdk/docs/install?hl=fr#linux)
     - ##### Pour le cloud shell:
       Aucun pré-requis
### Schema de présentation du déploiement

### Configuration es scripts pour chaque client
