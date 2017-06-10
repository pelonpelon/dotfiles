#!/bin/bash

#proxy_on 127.0.0.1:8123

# polipo proxy (pdnsd is also running)
export http_proxy=127.0.0.1:8123
export https_proxy=127.0.0.1:8123
export ftp_proxy=127.0.0.1:8123
export rsync_proxy=127.0.0.1:8123
export no_proxy=localhost,127.0.0.1,localaddress,.localdomain.com,sf-eagle.mirror


# Make vim the default editor
export EDITOR="/usr/local/bin/vim"
export SHELL="/usr/local/bin/zsh"

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/Users/pelon/bin:$PATH
#MacPorts

export PHPRC=/etc/php.ini


# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Link Homebrew casks in `/Applications` rather than `~/Applications`
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# for meteor
export PACKAGE_DIRS="/Users/pelon/.meteor/packages"


# php5
export PATH=/usr/local/php5/bin:$PATH
# node
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

#jsbin
export JSBIN_CONFIG=$HOME/.jsbin/config.local.json jsbin
