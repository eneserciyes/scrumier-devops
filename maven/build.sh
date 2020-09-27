## Build Script for Jira Time Tracker
grn=$'\e[1;32m'
blu=$'\e[1;34m'
white=$'\e[0m'
cyn=$'\e[1;36m'
mag=$'\e[1;35m'
yellowback=$'\e[43m'
defaultback=$'\e[49m'
echo
echo "$yellowback $blu******************************************************************** $defaultback"
echo "$yellowback ********************** SCRUMIER LOCAL BULK BUILD *************************** $defaultback"
echo "$yellowback ******************************************************************** $blu $defaultback"
echo
echo
echo "$blu > $grn Scrumier build process has been started ..."
echo
echo "$blu > $cyn Building version-control ... $white"
echo
mvn -f ../version-control/ clean deploy
echo
echo "$blu > $cyn Building commons ... $white"
echo
mvn -f ../commons/ clean deploy
echo
echo "$blu > $cyn Building api-gateway ... $white"
echo
mvn -f ../api-gateway/ clean package spring-boot:repackage
echo
echo "$blu > $cyn Building authentication ... $white"
echo
mvn -f ../authentication/ clean package spring-boot:repackage
echo
echo "$blu > $cyn Building configuration ... $white"
echo
mvn -f ../config/ clean package spring-boot:repackage
echo
echo "$blu > $cyn Building discovery-server ... $white"
echo
mvn -f ../discovery-server/ clean package spring-boot:repackage
echo
echo "$blu > $cyn Building integration ... $white"
echo
mvn -f ../integration/ clean package spring-boot:repackage
echo
echo "$blu > $grn Scrumier build process successfully completed! $white"