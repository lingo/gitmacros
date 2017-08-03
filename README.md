Git macros
==========

Here are a number of commands which I keep in my $PATH and which can then be called direct via git.


## Contents ##

 -	git-add-this-submodule
 -	git-chk-prv
 -	git-deploy
 -	git-dropbox-init
 -	git_filter_others.sh
 -	git-modechange
 -	git_post_receive_hook_dropbox
 -	git-release
 -	git-root
 -	git-ssh
 -	git-status-tree


## Usage Details ##

    git chk-prv <filename> [commit/branch/tag]

Compare current file version with (by default) HEAD version, or with version in commit/branch/tag provided.  This compare is done using **meld**.

    git root

Find the root (directory containing .git/) of this repository

