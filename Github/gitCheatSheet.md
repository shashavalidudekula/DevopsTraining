# Git/Github

**What is Git ?** 

Git is a distributed version control system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files. Its goals include speed, data integrity, and support for distributed, non-linear workflows. 

**What is Github**


GitHub is a web-based Git repository hosting service, which offers all of the distributed revision control and source code management (SCM) functionality of Git as well as adding its own features. 

## Difference between Git and GitHub


| Git       | GitHub          |
| ------------- |-------------|
| Git is a software.      |GitHub is a service. |
| Git is a command-line tool      | GitHub is a graphical user interface  |
| Git is installed locally on the system  | GitHub is hosted on the web  |
| Git is maintained by linux. | GitHub is maintained by Microsoft. |
| Git is focused on version control and code sharing. |	GitHub is focused on centralized source code hosting. |
| Git is a version control system to manage source code history. | GitHub is a hosting service for Git repositories. |
| Git has no user management feature. | GitHub has a built-in user management feature. |
| Git is open-source licensed. | GitHub includes a free-tier and pay-for-use tier. |
| Git has minimal external tool configuration. |  GitHub has an active marketplace for tool integration. |
| Git provides a Desktop interface named Git Gui. | GitHub provides a Desktop interface named GitHub Desktop. |
| Git competes with CVS, Azure DevOps Server, Subversion, Mercurial, etc.	| GitHub competes with GitLab, Git Bucket, AWS Code Commit, etc. |
    
    
# Git Commands:
 
## SETUP
Configuring user information used across all local repositories

`git config --global user.name “[firstname lastname]”` set a name that is identifiable for credit when review version history

`git config --global user.email “[valid-email]”`  set an email address that will be associated with each history marker

`git config --global color.ui auto`  set automatic command line coloring for Git for easy reviewing

 ## STARTING A PROJECT / INITIALIZATION
 Initializing and cloning repositories
 
 `git init`  Initialize an existing directory as a Git repository
 
 `git init projectName` Create a new local repository. If _projectName_ is provided, Git will create a new directory name as _projectName_ and will initialize a repository inside it. 
 
 `git clone projectUrl` Downloads a project with the entire history from the remote repository.
 
 ## STAGE & SNAPSHOT
 Working with snapshots and the Git staging area
 
`git status` Displays the status of your working directory. Options include new, staged, and modified files. It will retrieve branch name, current commit identifier, and changes pending commit.

`git add file` add a file as it looks now to your next commit (stage)

`git reset file` unstage a file while retaining the changes in working directory

`git diff` diff of what is changed but not staged

`git diff --staged` diff of what is staged but not yet committed

`git commit -m “[descriptive message]”` Commit your staged content as a new commit snapshot


 ## BRANCH & MERGE
 Isolating work in branches, changing context, and integrating changes
 
`git branch` list your branches. a * will appear next to the currently active branch

`git branch branch-name` create a new branch at the current commit

`git branch -b branch-name` Switch working directory to the specified branch. With `-b` Git will create the specified branch if it does not exist.

`git checkout branch-name` switch to given _branch-name_ and check it out into your working directory

`git branch -d branch-name` Remove selected branch, if it is already merged into any other. `-D` instead of `-d`forces deletion.

`git merge branch-name` merge the specified branch’s history into the current one (the one you are on currently)

`git log` show all commits in the current branch’s history

## INSPECT & COMPARE
Examining logs, diffs and object information

`git log` show the commit history for the currently active branch

`git log -n count` List commit history of current branch. `-n count` limits list to last `n` commits 

`git log --oneline` Lists commits with ids and mesages one per line

`git log --oneline --graph --decorate` An overview with reference labels and history graph. One commit per line.

`git log branchB..branchA` show the commits on branchA that are not on branchB

`git log --follow file` show the commits that changed file, even across renames

`git diff branchB...branchA` show the diff of what is in branchA that is not in branchB

`git show SHA` show any object in Git in human-readable format. `[SHA]` is nothing but Unique commit id.

`git reflog` List operations (e.g. checkouts or commits) made on local repository.

## SHARE & UPDATE
Retrieving updates from another repository and updating local repos

`git remote add alias url` add a git URL as an alias

`git fetch alias` fetch down all the branches from that Git remote

`git merge alias branch` merge a remote branch into your current branch to bring it up to date

`git push alias branch` Transmit local branch commits to the remote repository branch

`git push --tags remote` Push local changes to the remote. Use `--tags` to push tags

`git pull` fetch and merge any commits from the tracking remote branch


## TAGGING KNOWN COMMITS

`git tag` List all Tags

`git tag name` Create a tag with given name 

`git tag name [commit SHA[`  Add `[commit SHA]` to tag a specific commit instead of current one.

`git tag -a name` Create a tag object named name for current commit.

`git tag -d name` Remove a tag from local repository. **Note:** you cannot remove a tag on remote repository

## TEMPORARY COMMITS
Temporarily store modified, tracked files in order to change branches

`git stash` Save modified and staged changes

`git stash list` list stack-order of stashed file changes

`git stash pop` write working from top of stash stack

`git stash drop` discard the changes from top of stash stack

## REWRITE HISTORY
Rewriting branches, updating commits and clearing history

`git rebase branch` apply any commits of current branch ahead of specified one

`git reset --hard [commit SHA]` clear staging area, rewrite working tree from specified commit

`git revert [commit SHA]` Create a new commit, reverting changes from the specified commit. It generates an inversion of changes.

