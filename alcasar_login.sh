challenge=$(curl https://alcasar.laplateforme.io/intercept.php -Ls | grep challenge | cut -d '"' -f6)


curl -Ls 'https://alcasar.laplateforme.io/intercept.php' -o /dev/null \
 -H 'accept-language: fr-FR' \
 --data-raw "challenge=$challenge&userurl=http://google.fr&username=$1&password=$2&button=Authentification"

