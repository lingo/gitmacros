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

### Weirdos ###
 -  git-add-this-submodule
 -  git-deploy
 -  git_filter_others.sh
 -	git-ssh
 -	git-status-tree


## Usage Details ##

    git chk-prv <filename> [commit/branch/tag]

Compare current file version with (by default) HEAD version, or with version in commit/branch/tag provided.  This compare is done using **meld**.

    git root

Find the root (directory containing .git/) of this repository

