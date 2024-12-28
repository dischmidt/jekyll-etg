#!/bin/bash
if [ $# -eq 0 ]
 then
    echo "Deploying for staging mode, not for production. Otherwise add argument production."
    STAGE="staging"
    JEKYLL_ENV=$STAGE bundle exec jekyll build 
 else

    case "$1" in
        production) STAGE="production";;
        testing) STAGE="testing";;
        staging) STAGE="staging";;
    esac
fi
 
JEKYLL_ENV=$STAGE bundle exec jekyll build 
rsync -avz --delete _site/ --exclude _site/deploy.sh root@box.eurotrade-gateway.com:/srv/data/www/eurotrade-gateway.com/
echo ""
echo "Build and uploaded for $STAGE."
