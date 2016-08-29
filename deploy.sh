#!/bin/bash

set -e

# Build the website and copy it to the build folder
make

# Commit the website and push it
cd _book

git init
git checkout -b gh-pages
git config user.name "Travis CI"
git add .
git commit -a -m "Auto-deploy by Travis CI"
# git push --force --quiet "https://${GH_TOKEN}@github.com/graphql/graphql.github.io.git" master:master
git push --force --quiet "https://${GH_TOKEN}@github.com:neighborhood999/webpack-tutorial-gitbook.git" gh-pages:gh-pages
