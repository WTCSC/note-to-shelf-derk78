#!/bin/bash


filename="notes.txt"
add_notes() {

    timestamp=$(date +"%Y-%m-%d %H-%M-%S")
    
    if [ "$1" != "" ]; then
        echo "$timestamp - $1" >> $filename

        echo 'Note added successfully'
    fi
}

list_notes() {
    if [ -f "$filename" ]; then 
        cat "$filename"
    else
        echo "Unfortunately $filename does not exist"
    fi
}

search_notes() {
    #I used the grep command here to find the keyword and return 
        grep "$1" $filename
}

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

exit 