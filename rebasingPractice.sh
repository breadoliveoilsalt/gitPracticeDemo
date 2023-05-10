#!/bin/bash

set -Eeou pipefail

mkdir rebasingPractice

echo "=================" >> rebasingPractice/logFile.tmp
date >> rebasingPractice/logFile.tmp
echo "=================" >> rebasingPractice/logFile.tmp
exec &> rebasingPractice/logFile.tmp

cd rebasingPractice
git init .
touch groceryList.txt, partySupplies.txt, guestList.txt
echo -e "Bread\nBagels\nPasta" >> groceryList.txt
git add groceryList.txt
git commit -m "Add carbs to grocery list"

INITIAL_COMMIT=$(git rev-parse HEAD)

echo -e "Party hats\nBaloons\nStreamers" >> partySupplies.txt
git add partySupplies.txt
git commit -m "Add initial supplies to party supply list"

echo -e "Friends\nFamily" >> guestList.txt
git add guestList.txt
git commit -m "Add initial guests"

git checkout $INITIAL_COMMIT

git checkout -b rebasingSimpleSquashing

echo "Almonds" >> groceryList.txt
git add groceryList.txt
git commit -m "Add almonds"
echo "Pecans" >> groceryList.txt
git add groceryList.txt
git commit -m "Add pecans"
echo "Cashews" >> groceryList.txt
git add groceryList.txt
git commit -m "Add cashews"
echo "Chuck steak" >> groceryList.txt
git add groceryList.txt
git commit -m "Add chuck steak"
echo "Pork shoulder" >> groceryList.txt
git add groceryList.txt
git commit -m "Add pork shoulder"
echo "Alligator tail" >> groceryList.txt
git add groceryList.txt
git commit -m "Add alligator tail"

git checkout $INITIAL_COMMIT

git checkout -b rebasingWithReordering

echo "Ice cream" >> groceryList.txt
git add groceryList.txt
git commit -m "Add ice cream"
echo "Wine" >> groceryList.txt
git add groceryList.txt
git commit -m "Add wine"
echo "Salty crackers" >> groceryList.txt
git add groceryList.txt
git commit -m "Add salty crackers"
echo "Pie" >> groceryList.txt
git add groceryList.txt
git commit -m "Add pie"
echo "Cheese" >> groceryList.txt
git add groceryList.txt
git commit -m "Add cheese"
echo "Seltzer" >> groceryList.txt
git add groceryList.txt
git commit -m "Add seltzer"

git checkout $INITIAL_COMMIT

git checkout -b rebasingWithConflicts

echo -e "Music" >> partySupplies.txt
git add partySupplies.txt
git commit -m "Add music to party supply list"

echo -e "Paper plates" >> partySupplies.txt
git add partySupplies.txt
git commit -m "Add paper plates to party supply list"

echo -e "Co-workers" >> guestList.txt
git add guestList.txt
git commit -m "Add co-workers"

git checkout $INITIAL_COMMIT

LOST_BRANCH="reflogToUndoRebasing"
git checkout -b $LOST_BRANCH
echo "Me" >> guestList.txt
git add guestList.txt
git commit -m "Add the most important guest"
git checkout $INITIAL_COMMIT
git branch -D $LOST_BRANCH

git checkout $INITIAL_COMMIT

git checkout -b reflogToUndoRebasing

echo "Apples" >> groceryList.txt
git add groceryList.txt
git commit -m "Add apples"
echo "Beer" >> groceryList.txt
git add groceryList.txt
git commit -m "Add beer"
echo "Oranges" >> groceryList.txt
git add groceryList.txt
git commit -m "Add oranges"

# Simulate a botched rebase of the last two commits
# into one commit
git reset --soft HEAD~2
git add groceryList.txt
git commit -m "Add fruit salad ingredients"

