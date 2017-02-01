#!/bin/bash

# This script will create a version number from git that
# people can wrap their brains around.  If on the master
# branch, it just produces a numeric string representing
# then number of commits to master.  If on any other
# branch, it produces a string with the branch name,
# followed by a dash, followed by the number of commits
# on that branch.  The branch is followed by a dot and
# the first 7 characters of the git commit id.  If the
# current repo has changes that have not been checked
# in, there will be a .SUSPECT added.

branch=`git status | grep 'On branch' | awk '{ print $4 }'`
version=`git log | grep '^commit' | wc -l`
supect='.SUSPECT'
stat=`git status --porcelain`
if [ -z "$stat" ]; then
	supect=''
fi

if [ "${branch}" == "master" ]; then
	echo ${version}${supect}
else
	branch=${branch^^}${supect}
	echo ${version}.${branch}
fi
