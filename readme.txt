 ruViMux



RubyVim is an IDE for Ruby and Ruby on Rails based on plugins around vim and tmux 

All the plugins can do a lot of more things as described here. 
The aim of this project is a testdriven workflow for Ruby on Rails with screen and vim. So only those things are explained what I think is usefull (If You have suggestions mail...)
Somtimes I only write examples Its up to you to extend it on other things)

All the plugins (except of ek.vim) are existing plugins and not programmed by me -> for copyrights read there.

It supports cucumber,rspec and rvm 



Installation
--make a symbolic link to ruvi or copy the content from ruvi to ~/.vim
--if tmux is not installed on your system install it.
--copy .vimrc in your HomeDir.
--install as your system ruby a plain mri Ruby 
--Install with you system ruby the tmuxinator gem
--copy the example_tmuxinator.yml to .tmuxinator and edit to you own needs and rename it to <yourproject>.yml.
--launch it with mux <yourproject>



Revision

2013/06/03
Complete rebuild beased on vundle
A lot of more plugins are used :
Look at .vimrc for all the bundles installes
One of my all time favourites is CommandT
press Ctrl-t and enter some letters of a filename....




2011/02/28
Added <F10> repeat the last spec or feature command

2011/02/21
Added Ruby-debug

2010/01/28
Added C-t functionality -list recent files

2010/01/03
changed autoresize (its for 2 windows only) against ZoomWin
