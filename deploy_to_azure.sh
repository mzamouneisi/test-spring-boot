
export app=test-spring-boot
export img=${app}

# mvn clean install

# docker buildx build . -t ${img}

# docker run -p 8080:8080 ${img}

# Connectez-vous au portail Azure et créez un registre de conteneurs (Azure Container Registry) si vous n'en avez pas déjà un.
# Notez les informations d'identification du registre (nom du registre, nom d'utilisateur, mot de passe) pour référencer votre image Docker.

# Connectez-vous au registre à l'aide de la commande Docker :
export acr_name=mzareg
export username=mourad.zamoun@eisi-consulting.fr

export PATH="/cygdrive/c/Program Files/Microsoft SDKs/Azure/CLI2/wbin":${PATH}

az login

docker login ${acr_name}.azurecr.io -u ${username}

# Taguez votre image Docker avec l'URI du registre Azure Container Registry :
docker tag ${img} ${acr_name}.azurecr.io/${img}:latest

