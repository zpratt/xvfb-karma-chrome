xvfb-karma-chrome
=================

A headless vagrant environment for using the karma test runner with a headless chrome instance.

* You'll need to have [Vagrant](http://www.vagrantup.com/) installed first
* Once Vagrant is installed, do a `vagrant up` and you should be good to go
* Once the vm is up, in order to run chromium, you'll need to set your DISPLAY environment variable
  * export DISPLAY=:0
* I'm working on a better way to handle the DISPLAY variable, but for now you'll have to export it
