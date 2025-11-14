- `git init` : This is to Initialize git on our local project

- `git add filename or .` : This is put our files in a stagging area

- `git config user.name "username"` and `git config user.email "mygithubemail`: This command must be run if we are just making our first commit on a Repo, especially if we have just cloned it. This is to identify who's making this particular commit

- `git commit -m "comment'`: This is to comimit the files that are in stagging are. And with any commit git usually save a version of the commmited file in the .git file
 - `git rm --cached filename` : This is to unstage a file  

 - `git log` : This shows the information about all the commits
 - `git log --name-only`: This is to show the name of files that was 
 committed
 - `git log -n (number) 3`: This is to show the last 3 commit of a file 


 # BRANCH
- `git checkout -b branchname`: This is a create a branch and switch to the branch

- `git checkout branchname`: To switch to an existing branch

- `git branch -d branchname` : To delete a branch

- `git branch`: This is to check all branches we have 

# MERGE BRANCH
- checkout to the `master branch`
- `git merge branchname`


# GIT FETCH
- **One of the Scenario to use Fetch**

1. You pushed changes from Tayo-branch to your remote repo (GitHub).

2. On GitHub, your master branch is behind Tayo-branch, so you merged Tayo-branch into master on GitHub.

3. Now, your local master branch is behind the remote master branch, and you want to update it.

**Option 1**
    - `git checkout master  `          # switch to local master first
    - `git fetch origin master   `     # fetch latest commits from remote master
    - `git merge origin/master   `     # merge them into local master

**Option 2**
    - `git checkout master`            # switch to local - - `master first`
    git pull origin master         # fetch + merge in one command


# MERGE CONFLICT

*Real life scenorio that could lead to merge conflict*

1. `Dev Tayo` and `Dev Elizabeth` are working on the same  project but on their respective branches. They both made a changes on a particular file. `Dev Tayo` merged his branch with the master. When `Dev Elizabeth` was done, she also attemped to merge her branch with the Master branch and this cause a comflict because Git wont know the version of the file to keep. Hence a comflict occur.

