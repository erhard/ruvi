RuVi

RubyVim is an IDE for Ruby and Ruby on Rails based on plugins around vim and screen

All the plugins can do a lot of more things as described here. 
The aim of this project is a testdriven workflow for Ruby on Rails with screen and vim. So only those things are explained what I think is usefull (If You have suggestions mail...)
Somtimes I only write examples Its up to you to extend it on other things)

All the plugins (except of ek.vim) are existing plugins and not programmed by me -> for copyrights read there.

It supports cucumber,rspec and rvm 



Installation
--make a symbolic link to ruvi or copy the content from ruvi to .vim
--copy .vimrc in your HomeDir.




keymappings useful for the workflow

:b<n>    switch to buffer with the number   example :  :b5
F5       Indent the whole File. The cursor remains on the place where it was (its gg=G with saving the cursor position) 

C-R C-W  Insterts the word under the cursor, when You are in the command-line


F9        Gives a list of all buffers - Enter the number to switch the current window(where the cursor is) to the new window
c-t       Gives a list of recent opened files choose one by number


FuzzySearch
F2       FuzzySearch of a filename (same as in Textmate)
F3       FuzzySearch thru the commands

Project Navigation
You can use FuzzySearch to jump to a File - Press F2 and then put some ** to search recursivly.

 
For FileExploring mostly NERDTree and Fuf (Fuzzyfinder) is used. You see the Filesystem tree on the left side (Press F8). When you are in the "Explorer Window" go to the rootdir of your project. Enter :Bookmark <projectname>.
Now you the Project registered. Enter Shift - B (S-B)
--> you can see the project at top of the window. So it is "jumpable" from every place.

When a project was selected the Rootdir with typing cd in the NERDTree Window to your current working Dir (this is necessary to use rsepc and cucumber properly, to run the scripts etc.)
When a function centered view is wanted press <F7>.
  
To get help Type :h Fuf  and <TAB>  So You get all possible help for Fufs . Instead of Fuf of course You can put something else (:h function gives a overview)

Jumping to a method under the cursor

First You have to use ctag (ctag must be installed as a package it is not only a plugin (in ubuntu exuberant-ctags)
Then run on the root of your dev ctag -R *
This is initial work

When You are in a method type in the normal mode Ctrl-] to jump to the method source. In the method source type Ctrl-r to jump back to the origin. 





BDD and TDD
     
S-F10

When You are in a feature ord _spec.rb file cucumber or spec is execuded and the results are diplayed. Place the cursor on the filename where the error happend (syntaxx is filename:line) and press   >g    Then the file is opended in the cursor jumps to the linenumber where the error occurs.



Other useful things :

:A, :R, 
Jump to related files

:tabnew
Opens a new tab where you can begin from the scratch
C-PgUp and C-PgDwn to switch between the tabs


:Rgrep
recursive search


C-w o   zooming a window and restoring original size
enter a ruby command and press tab -> you see a selection of possible commands


The IDE will in future a mixture between screen and VIM so here begins se screen section







Screen :

C-a A  Name a screen




Revision


2010/01/28
Added C-t functionality -list recent files


2010/01/03
changed autoresize (its for 2 windows only) against ZoomWin
