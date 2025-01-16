#!/bin/bash


filename="notes.txt"
add_notes() {

    #Gather the current date using the `date` command and then combined it with the specified format.
    timestamp=$(date +"%Y-%m-%d %H-%M-%S")
    
    #If the note isn't empty add the timestamp to the note defined by `$1` then append it to the file using the echo command and two greater than symbols. 
    if [ "$1" != "" ]; then
        echo "$timestamp - $1" >> $filename
        echo 'Note added successfully'
        exit 0
    else
        exit 1
    fi
}

#Here I used an if statement with `-f` to check if the file exists and if it does I simply list the contents of the file using the `cat` command,
#otherwise I return that the file doesn't exist.

list_notes() {
    if [ -f "$filename" ]; then 
        cat "$filename"
        exit 0
    else
        echo "Unfortunately $filename does not exist"
        exit 1 
    fi
}

#Here due to it's simplicity the grep command was used to compare a user inputted string represting by `$1` and compared with the file to find the specified string.

search_notes() {
    if grep "$1" $filename; then
        exit 0
    else 
        exit 1
    fi
}


#This is where all of the commands are handled using the `case` statement add, list, and search. 
#The positional argument 2 is the user input that will be put into the choosen function.

case $1 in
    add)
        add_notes "$2"
        ;;
    list)
        list_notes
        ;;
    search)
        search_notes "$2"
        ;;
esac

exit 0 
