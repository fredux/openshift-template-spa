#!/usr/bin/env bash

NAMESPACE='fatesg-v1'
#APPLICATION_NAME=' beego-example'
SOURCE_REPOSITORY_URL='https://github.com/openshift/golang-ex'


#Base64 encoding is not an encryption method and is considered the same as plain text.
#https://kubernetes.io/docs/concepts/configuration/secret/
GITHUB_WEBHOOK_SECRET=$(echo -ne '123456789' | base64)
#GITLAB_USER='fatesg'
#GITLAB_PASSWORD=$(echo -n 'gitlab2021' | base64)

oc new-app -n fatesg-v1  

oc new-app -n $NAMESPACE \
           -p SOURCE_REPOSITORY_URL=$SOURCE_REPOSITORY_URL \
            beego-example

			