# ApiProjectWork

1. git init
2. git add -A
3. git commit -m "Added new project"
4. git remote add origin https://github.com/gorazdmurko/ApiProjectWork.git
5. git branch ( just to checkout current branch - which is master )
6. git push -u -f origin master

# COMMIT & PUSH
-- When changes are made (for example in README.md) and you want to commit & push --

git add README.md
git commit -m 'some message'
git push origin master --> (if master is name of the branch you want to push to)
-- ommit 'git add' command if lots of changes made --

git commit -a -m 'some message'
git push origin master --> (if master is name of the branch you want to push to)
PULL
git pull

# LOCAL BRANCHES
git branch ~~ returns an info of current local branch
git checkout develop ~~ switches to develop local branch (if already exists)
git checkout -b develop ~~ creates local develop branch and switches to it
git checkout -b praksa develop ~~ creates new branch from your current branch
git push -u origin 'branch-name' ~~ pushing a current local branch to newly created remote branch (-u is the shortcut for --set-upstream)

# REMOTE BRANCHES
git fetch --all
STEPS TO CREATE REMOTE BRANCH
create a local branch first and switch to it --> git checkout -b 'new-branch-name'
only if you want to create new branch from existing one --> git checkout -b 'new-branch-name' 'from-branch-name'
pushing a local branch to remote --> git push -u origin 'branch-name'
step 3 --> sets default remote branch to the current local branch -- it also creates remote branch if it does not exist yet

# MERGE
-- merge from develop to master --

git branch
git checkout master
git merge develop
DELETE BRANCHES
git branch -d 'branch_name' ~~ delete local branch
git branch -D 'branch_name' ~~ delete local branch
git push 'remote_name' --delete 'branch_name' ~~ delete REMOTE branch
USEFUL INFO
git status --> See changes
git branch -v --> To see the last commit on each branch, you can run
git branch --merged --> To see which branches are already merged into the branch you’re on, you can run
git branch --no-merged --> To see all the branches that contain work you haven’t yet merged in, you can run

# REFERENCES
https://www.digitalocean.com/community/tutorials/how-to-push-an-existing-project-to-github
https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-push-an-existing-project-to-GitHub
https://www.git-tower.com/learn/git/commands/git-commit
https://www.atlassian.com/git/tutorials/syncing/git-pull
https://www.atlassian.com/git/tutorials/using-branches/git-checkout
https://www.w3docs.com/snippets/git/how-to-create-a-remote-branch-in-git.html
