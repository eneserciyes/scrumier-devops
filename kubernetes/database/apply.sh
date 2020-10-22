## Build Script for Scrumier
grn=$'\e[1;32m'
blu=$'\e[1;34m'
white=$'\e[0m'
cyn=$'\e[1;36m'
mag=$'\e[1;35m'
yellowback=$'\e[43m'
defaultback=$'\e[49m'

echo "$blu > $grn Scrumier MYSQL database kubernetes deployment is being started...$white"
echo "$cyn mysql-deployment.yaml is being applied to the kubernetes...$white"
echo "$cyn scrumier-data-volume-persistentvolumeclaim.yaml is being applied to the kubernetes...$white"
echo
kubectl apply -f mysql-deployment.yaml,scrumier-data-volume-persistentvolumeclaim.yaml
echo
echo "$blu > $grn Scrumier MYSQL database kubernetes deployment is completed!$white"
