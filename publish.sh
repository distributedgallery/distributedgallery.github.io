#!/bin/bash
zola build
cd public
echo 'www.distributedgallery.com' > CNAME
git init
git remote add origin https://github.com/distributedgallery/distributedgallery.github.io.git
git add --all
git commit -m "[feat] Publish"
git push origin HEAD:master --force
# git push origin master --force