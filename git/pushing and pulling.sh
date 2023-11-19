# pushing to a newly created remote with no commits yet
# the first commit is done locally then pushed

git remote add origin https://the_url.git
git push -u origin master

# when created new remote repos has one commit already but
# local has none yet
git remote add ...
git pull origin master
git branch -u origin/master
git add .
git push
