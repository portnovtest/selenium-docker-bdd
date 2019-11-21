FROM openjdk:8-jre-alpine3.9

RUN apk add curl jq

# Workspace
WORKDIR /Users/phildolganov/udemy

# ADD .jar under target from host
# into this image
ADD target/selenium-docker-bdd.jar       selenium-docker-bdd.jar
ADD target/selenium-docker-bdd-tests.jar selenium-docker-bdd-tests.jar
ADD target/libs                      libs

# in case of any other dependency like .csv / .json / .xls
# please ADD that as well

# ADD suite files


# ADD health check script
ADD healthcheck.sh                   healthcheck.sh
# BROWSER
# HUB_HOST
# MODULE

ENTRYPOINT sh healthcheck.sh