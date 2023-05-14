# Rebasing practice

## Getting started

Clone the repo.
Run: 
- `bash ./rebasingPractice.sh`
- `cd rebasingPractice`
- `git branch`

Look at the branches, each of which is described below. Checkout the branch with the task you'd like to work on.

## Branches

-----

### rebasingSimpleSquashing

Tasks:

1. Use `git rebase -i` to squash the last six commits into just two with the following commit messages:
- "Add nuts"
- "Add meat"

*Hint*: Leave the first commit alone.

2. Use `git rebase` to do a non-interactive rebase on the `main` branch. Reconcile conflicts that arise, if any. Then merge into the `main` branch.

-----

### rebasingWithReordering

Tasks:

1. Use `git rebase -i` to squash the last six commits into just three with the following commit messages:
- "Add beverages"
- "Add desserts""
- "Add savory snacks""

*Hint*: This can be done with one rebase. You will need to reorder the commits. Leave the first commit alone.

2. Use `git rebase` to do a non-interactive rebase on the `main` branch. Reconcile conflicts that arise, if any. Then merge into the `main` branch.

-----

#### rebasingWithConflicts

Tasks:

1. Use `git rebase` to do a non-interactive rebase on the `main` branch. You are guaranteed to face conflicts. Resolve them. Feel the pain of having to reconcile conflicts multiple times, once for each commit. Then merge into the `main` branch.

2. Delete the `gitPractice` repo and run the script again. Checkout this same branch. Before you do a non-interactive `git rebase`, do an interactive `git rebase -i` to sqaush the last three commits into one, with a cheeky message list "Add stuff I forgot to multiple files". Do the non-interactive `git rebase`. You will still have conflicts. But note: is it easier to resolve all the conflicts from one commit rather than several commits being rebased on the main branch?

*Hint*: Really want to push yourself? Instead of deleting the repo in Task 2, can you use `git reflog` to reset things to the way they were before Task 1?

-----

#### There's no branch for this one. Godspeed.

Task:

Something really bad happened. You don't know how or why. All you konw is you had a branch where you added the most important guest to your list, and now it's gone. With the branch goes this important commit. Use `git reflog` to find the commit. Use `git checkout` to create a pointer to the commit, rebase the branch on to the `main` branch, and merge into `main`.

-----

#### reflogToUndoRebasing

Tasks:

1) You just did an interactive rebase. Great. You wanted two commits:

- "Add fruit salad ingredients"
- "Add soda"

But you accidentally messed up the squashing. Look at the botched history and changes using `git log -p` (or `git log --oneline -p`). Use `git reflog` to get things back to the way they were *before* squashing. Then redo the interactive rebase to create the commits correctly. 

2) Psyche -- you're not done. After thinking about it for a second, the message "Add soda" is too general. Use `git commit --amend` to change the commit message to something more specific, like "Add Diet Pepsi".
Do a non-interactive rebase on to `main`, and (you guessed it) merge into `main`.

-----

## Pat yourself on the back

Once you feel comfortable doing the exercises above, congratulate yourself. You can now manipulate git history with the best of them, and you have a handle how to get back on the straight and norrow when something goes awry.
