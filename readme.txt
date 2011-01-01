RuVi

RubyVim is an IDE for Ruby and Ruby on Rails based on plugins around vim and screen

All the plugins can do a lot of more things as described here. 
The aim of this project is a testdriven workflow for Ruby on Rails with screen and vim. So only those things are explained what I think is usefull (If You have suggestions mail...)
Somtimes I only write examples Its up to you to extend it on other things)

All the plugins (except of ek.vim) are existing plugins and not programmed by me i-> for copyrights read there.



Installation
--make a symbolic link to ruvi or copy the content from ruvi to .vim
--copy .vimrc in your HomeDir.




keymappings useful for the workflow

:b<n>    switch to buffer with the number   example :  :b5
F5       Indent the whole File. The cursor remains on the place where it was (its gg=G with saving the cursor position) 


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


C-S W   zooming a window (only when two windows are opended)




The IDE will in future a mixture between screen and VIM so here begins se screen section



RVM support

Within this ruvi you can the the ruby and the gemset you are on.
If you want to change the gemset do it before starting vim





Screen :

C-a A  Name a screen

