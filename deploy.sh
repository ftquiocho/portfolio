# #!/usr/bin/env sh

# # abort on errors
# set -e

# # build
# npm run build

# # navigate into the build output directory
# cd dist

# # place .nojekyll to bypass Jekyll processing
# echo > .nojekyll

# # if you are deploying to a custom domain
# # echo 'www.example.com' > CNAME

# git init
# git checkout main
# git add -A
# git commit -m 'deploy'

# # if you are deploying to https://<USERNAME>.github.io
# # git push -f git@github.com:ftquiocho/ftquiocho.github.io.git main

# # if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:ftquiocho/qui8.git main:gh-pages

# cd -


npm run build

git add dist -f

git commit -m 'dist update'

git subtree push --prefix dist origin gh-pages
