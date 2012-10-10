#!/bin/sh
# Filter commits out which are not by me.

skip_commit()
{
	   shift;
	   while [ -n "$1" ];
	   do
			   shift;
			   map "$1";
			   shift;
	   done;
}

git filter-branch -f --commit-filter '
	   if [ "$GIT_AUTHOR_NAME" != "Luke Hudson" ];
	   then
			   skip_commit "$@";
	   else
			   git commit-tree "$@";
	   fi' HEAD

