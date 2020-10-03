# This script pushes the all docker images to the docker hub.

grn=$'\e[1;32m'
blu=$'\e[1;34m'
white=$'\e[0m'
cyn=$'\e[1;36m'
mag=$'\e[1;35m'


echo "$mag Pushing all Scrumier docker images to the hub..."
echo
echo "$blu > $grn Enter the version:"
read version
echo  "$blu > $cyn Pushing authentication"
docker push ogedik/authentication:$version

echo  "$blu > $cyn Pushing api-gateway"
docker push ogedik/api-gateway:$version

echo  "$blu > $cyn Pushing discovery-server"
docker push ogedik/discovery-server:$version

echo  "$blu > $cyn Pushing config"
docker push ogedik/config:$version

echo  "$blu > $cyn Pushing integration"
docker push ogedik/integration:$version

echo  "$blu > $cyn Pushing scrumier-ui"
docker push ogedik/scrumier-ui:$version

echo "$mag Pushing to docker hub is completed! $white"


