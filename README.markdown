# Dot Files - PontoFiles

> Those are some of mine dot files and configuration steps.

### To Ubuntu:

* Copy all the files from ubuntu folder to your home
* sudo apt-get install ncurses-term (this will recognize de gnome-256color)

### To Windows:

* Copy all the files from windows folder to your home

## SETUP DEVELOPMENT ENVIRONMENT

* install git
* install ruby (at windows use 1 click installer, at ubuntu use package manager)
* install rubygems (at ubuntu don't use package manager, get the source and install)
* install rails
* install other desired gems

## GEMS TO INSTALL

Add other gem sources

    gem source -a http://gems.github.com

use --no-ri --no-rdoc if you don't want to install the current gem DOCS.

* hirb
* rake
* rack
* sqlite3-ruby
* heroku
* jamis-fuzzy_file_finder

## Configure Multiple GITHUB Accounts on same Computer

You may use different OS accounts, so each account have link to one GITHUB account

If you can't or don't want to use multiple OS accounts then you need to do this:

Add a config file into ~/.ssh folder

Add this to your config file:

    # Default GitHub user (DefaulUser)
    Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa
     
    # Other user (OtherUser)
    Host github-other_user_name
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_other_user_name

Then add the 2nd key to your ssh keys by doing:

    ssh-add ~/.ssh/id_rsa_other_user_name

#### If you get error like "Could not authenticate agent." do this:

* Open a git bash
* exec ssh-agent bash
* then use the ssh-add command

## TODO

* Verify if the dot files here are up to date. (probably some stuff should be updated)
