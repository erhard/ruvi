####Simple Menu----
####read menuItems from external file
##edit the menu_items file if You want to change the menu
source menu_items

len=${#Menu[*]}
while :
do
    clear
    echo "   R U V I M U X  - M A I N - M E N U"
    echo
    echo
    echo
    ####Iterate thru Menu and displays it
    i=0
    for Element in "${Menu[@]}" 
    do
        let i++
        echo $i. $Element
        echo
    done
    echo
    echo 0.  E x i t 
    echo
    echo -n "Please enter option [0 - $len] :  "
    read opt
    echo $opt

    if [ "$opt" -gt "$len" ]
    then 
        echo "$opt is an invaild option. Please select option between 0- $len only"
        echo "Press [enter] key to continue. . ."
        read enterKey
    fi
    if [ "$opt" -eq "0" ]
    then
        echo "Bye $USER"
        exit 1
    fi
  cd ${Path[$opt-1]} 
  echo $PWD
 
  ##The command from the Array is executed
           ${Execute[$opt-1]} 
  ####
  echo  Press Enter to continue.........
  read enterKey 
done


############End of simple Menu-System


