
set app=test-spring-boot
set img=%app%

@REM mvn clean install

@REM docker buildx build . -t %img%

@REM docker run -p 8080:8080 %img%

@REM Connectez-vous au portail Azure et créez un registre de conteneurs (Azure Container Registry) si vous n'en avez pas déjà un.
@REM Notez les informations d'identification du registre (nom du registre, nom d'utilisateur, mot de passe) pour référencer votre image Docker.

@REM Connectez-vous au registre à l'aide de la commande Docker :
set acr_name=mzareg
set username=mourad.zamoun@eisi-consulting.fr

set PATH=C:\Program Files\Microsoft SDKs\Azure\CLI2\wbin;%PATH%

az login 

docker login %acr_name%.azurecr.io -u %username% 

@REM Taguez votre image Docker avec l'URI du registre Azure Container Registry :
docker tag %img% %acr_name%.azurecr.io/%img%:latest



