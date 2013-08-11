Maggie-server
=============

Maggie-server is...

[![Build Status](https://travis-ci.org/adriancdperu/maggie-server.png)](https://travis-ci.org/adriancdperu/maggie-server)

Contributing
------------

Insiders: Create a branch (e.g. feature/controller/cpanel_login), commit to the branch, then push the branch to maggie-server's
repo and request a pull-request.

Outsiders: Fork the repo and send a pull request of your new feature / branch. If you add a considerable amount of code,
please include a test. OOP and Design Patterns if possible.

Install
-------

    $ git clone git@github.com:adriancdperu/maggie-server.git ~/git/maggie-server
    $ cd $HOME
    $ ln -s git/maggie-server maggie-server
    

First time?
-----------

Create a new repository on the command line && your first commit:

    $ touch file.md
    $ git init
    $ add file.md
    $ git commit -m "first commit"
    $ git remote add origin git@github.com:adriancdperu/maggie-server.git
    $ git push -u origin master


Push an existing repository from the command line:

    $ git remote add origin git@github.com:adriancdperu/maggie-server.git
    $ git push -u origin master

Tech
----

+ Ruby 1.9.3 / Rails 4.0 / AWS

Structure
---------
+ app/ Contains the controllers, models, views, helpers, mailers and assets. 
+ bin/ Contains the rails script that starts app and can contain other scripts you use to deploy or run maggie.
+ config/	Configure application's runtime rules, routes, database, and more.
+ config.ru	Rack configuration for Rack based servers used to start the application.
+ db/	Contains your current database schema, as well as the database migrations.
+ Gemfile
+ Gemfile.lock	These files allow you to specify what gem dependencies are needed for the app.
+ log/	Application log files.
+ public/	The only folder seen to the world as-is. Contains the static files and compiled assets.
+ Rakefile	This file locates and loads tasks that can be run from the command line. The task definitions are defined throughout the components of Rails. Rather than changing Rakefile, you should add your own tasks by adding files to the lib/tasks directory of your application.
+ README.rdoc	This is a brief instruction manual for application.
+ test/	Unit tests, fixtures, and other test apparatus.
+ tmp/	Temporary files (like cache, pid and session files)
+ vendor/	A place for all third-party code. In a typical Rails application, this includes Ruby Gems and the Rails source code.

By
--

CS TEAM
