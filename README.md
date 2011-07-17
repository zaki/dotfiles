# Zaki's dotfiles

These are config files to set up a system the way I like it.
I stole^H^H^H^H^H forked these settings from Ryan Bates. Please
do check out his amazing railscasts series at http://railscasts.com

## Installation

  Before installation, please review the sources and make sure you
  understand what these dotfiles are doing. Better yet, you should
  probably cherry-pick the parts that you find useful.

  But in case you decide to install wholesale (which is how I started)

    git clone git://github.com/zaki/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    git submodule init
    git submodule update
    rake install

Submodules are only used for vim configuration (pathogen).

## Environment

I am running on Mac OS X, but it will likely work on Linux as well with
minor fiddling. I primarily use zsh, but this includes some older bash
files as well. If you would like to switch to zsh, you can do so with
the following command.

    chsh -s /bin/zsh


## Features

### Aliases

Most aliases I use are for git or rails.

#### Git
* g       # git
* gb      # git branch -a
* gru     # git remote update
* gp      # git pull
* gpr     # git pull --rebase
* gk      # gitk, or gitx on OSX
* gg      # git gui, or gitx on OSX

#### Rails
* b       # bundle
* r       # rails
* rg      # rails generate
* rs      # rails server
* rc      # rails console
* rk      # rake
* s       # rake spec

#### Other
* ..      # cd ..
* c       # clear
* lg      # less +G

### Tab Completion

Tab completion for zsh is used through Oh-My-Zsh. For bash, completion
for git, rake and capistrano are set up. Rake and git completion also
work with the aliased versions (rk and g).

To speed things up, the results are cached in local .rake_tasks~ and
.cap_tasks~. It is smart enough to expire the cache automatically in
most cases, but you can simply remove the files to flush the cache.

### Prompt

The checked out git branch name and git status indicators are added to
both bash and zsh prompts. Status indicators are like below:

* Nothing   : pristine
* White     : untracked files found
* Red       : unstaged changes to tracked files
* Green     : staged, but uncommitted changes
* Red Arrow : local - unpushed - commits

The time is also displayed in both bash and zsh prompts.

### Localrc

If there are some shell configuration settings which you want secure or
specific to one system, place it into a ~/.localrc file. This will be
loaded automatically if it exists.

### Projectrc

You can specify a list of project aliases that you want to be able to access
in ~/.projectrc - this is different from .localrc in that it is encouraged
that you share .projectrc between computers, while keeping per-machine settings
in .localrc

### Git configuration

Your gitconfig will be set up automatically on install, asking for your
name, email and github credentials. Beyond that a common gitignore file
will be set up for you at ~/.gitignore

### Screen configuration

The screen prompt is set up to include a caption that displays the window
title the current time and the load average.

A special rails-specific screen configuration is created, which can be used
by issuing

    scr rails

This will create three screen windows starting at the current directory:
* a normal terminal session
* a rails console
* autotest

### Vim configuration

#### Plugins
* ack  (you can install the ack binary using brew install ack on OSX)
* bufexplorer
* cocoa syntax files
* conqueterm
* F# syntax
* fugitive
* gitv
* jsbeautify
* matchit
* NERDTree
* rails-vim
* rvm
* scratch:
* snipmate
* supertab
* tabular
* coffee-script
* slime
* vimclojure
* vimorganizer
* vimwiki
* zencoding

#### Settings

By default my own colorscheme (zazen) is used. Ryan Bates' (@rbates) great
railscasts colorscheme is also bundled.

Some mappings include
* ii        : mapped to escape in insert mode
* 0 and 00  : are mapped to ^ and 0 respectively
* C-j,k,h,l : mapped to move 5 times faster than jkhl
* ,n        : Toggle NERDTree
* ,f        : search with ack
* Space     : mapped to C-f
* :W and :Q : are mapped to :w and :q

The statusline includes the git branch, the file type and encoding and
possible formatting warnings (mixed tabs and spaces, full-width spaces)

### Windows support

For a while I had to use windows for development and these dotfiles were at
that time mostly windows-compatible. One extra windows-specific feature though
is an aliases.cmd that is set up to run every time cmd.exe is started
providing handy aliases just like in *nix environments.

To enable this cmd file, rake install creates an aliases.reg registry file
in your user directory. Importing that to the registry will enable loading
.win/aliases.cmd automatically. This then uses doskey to define aliases.
