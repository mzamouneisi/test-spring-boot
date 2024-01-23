
set app=test-spring-boot
set img=%app%

@REM mvn clean install

docker buildx build . -t %img%

@REM docker run -p 8080:8080 %img%

docker tag %img% registry.heroku.com/%app%/web
docker push registry.heroku.com/%app%/web

heroku container:release web -a %app%

heroku open -a %app%

heroku logs --tail -a %app%


