PROJECT=$1

#create a detached session for the IDE
tmux new-session -d -s $PROJECT
tmux new-window -t $PROJECT:1 -n 'Edit/test' 'vim'
#creates a second window
tmux new-window -t $PROJECT:2 -n 'RunTime' 'rails s & echo Press Enter  & read ee' 
#split the "vim window and runs a rails server .....
#result are two panes in one window
tmux splitw -v -p 30 -t 1  'autotest & read ee '
tmux splitw -h -t 2 "less -f log/development.log"
tmux select-window -t $PROJECT:1
tmux -2 attach-session -t $PROJECT
