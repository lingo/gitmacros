Git macros
==========

Here are a number of commands which I keep in my $PATH and which can then be called direct via git.


## Contents ##

### Everyday tools ###
These commands will respond to `-h` or `--help` with usage information.

 -  `git-chk-prv <file> [<revision>]`
    Compare a file using difftool against a previous version
 -	`git-dropbox-init`
    Setup a remote in dropbox (for backup, rather than collaboration)
 -	`git-modechange`
    Show files which have only had their permissions changed, not content
 -	`git-root`
    Find the top-level path of this git repository
 -  `git-undo-ws`
    Attempt to undo changes in a file which are only whitespace changes
 - `git-bump-ver`
    Bump a semver tag to next Major,minor, or patch version
 - `git-semver`
   Show the latest semver-style tag in the repo

### Weirdos ###
 -  git-add-this-submodule
 -  git-deploy
 -  `git_filter_others.sh`
	Example of filtering only commits by given author
 -	`git-ssh`
    Try to ssh to the remote
 -	`git-status-tree`
    Show a one-line git status summary for all git repos in the given dir
 - `git-cleanup-merges`
    Clean leftover junk from old (failed) merges


## Usage Details ##

### git chk-prv
```
Usage: ./git-chk-prv [-w|--write-only] [-q|--quiet] <file> [<revision>] 

	<revision> defaults to HEAD^, i.e. previous version
	--write-only will just overwrite the current file with the
		version from <revision>, after prompting.
	--quiet will use 'diff -q' instead of your git difftool
```

Compare current file version with (by default) HEAD version, or with version in
commit/branch/tag provided.  This compare is done using **meld**.

###  git root

Find the root (directory containing .git/) of this repository

### git dropbox-init
```
Usage: ./git-dropbox-init [-h|--help] [-d|--repo-dir <dir>] 
  [-n|--repo-name <name>] [-N|--no-push] [-v|--verbose|--show-commands]

	Default repo-dir is $HOME/Dropbox/code
	Default repo-name is $(basename $PWD).git

	--no-push  If not specified, then after initializing, we set default remote
               of current branch, and push it
```

### git undo-ws

Git Undo Whitespace-only changes

This will backup the given file to `FILENAME_gitundows.DATESTAMP`.

Then this command will try to patch the file so that only non-whitespace
changes remain.  Sometimes this patching fails, in which case a .rej file will
be created, the user is warned and the location of the backup will be shown

```
Usage: ./git-undo-ws <FILENAME>
```

### git bump-ver

```
Usage: ./git-bump-ver <M|m|p>

Finds latest semver tag, and bumps the
 [M]ajor, or [m]inor, or [p]atch version
 and echoes the new version
If there are no semver tags, sets a non-zero exit code
 and echoes 1.0.0 on stdout, and a message on stderr
```

### git cleanup-merges

Just run it.  It will show junk files and ask if you want to delete them or not.
