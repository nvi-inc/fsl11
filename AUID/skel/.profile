# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
# set in ~/.bashrc for AUID acccounts
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

#set initial PATH explicitly (or some one can make it insert the sbin's)
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export EDITOR=vim
export LESS=-nR
# 'n' is suppress line numbers,
#     which speeds things up a lot when going to the bottom of a large file
# 'R' is color escape sequences in 'raw' form,
#     particularly for git
#
# other LESS options to consider making the default:
# 'X' is no initialization/de-initialization,
#     keeps output visible after end (you could 'cat' the file instead)
# 'F' is quit if one screen,
#     you might like if you use 'X' so you don't have to quit
#
# All of them:
#export LESS=-nRXF

if [ "$AUID_PROMOTE_ACCOUNT" = "oper" ]; then
    oper_account
    exit
elif [ "$AUID_PROMOTE_ACCOUNT" = "prog" ]; then
    prog_account
    exit
fi
