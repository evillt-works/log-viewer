#!/bin/sh
yarn stdver

yarn build

git remote add github https://$GITHUB_TOKEN@github.com/FEMessage/log-viewer.git > /dev/null 2>&1
git push github HEAD:master --follow-tags

