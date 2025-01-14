#!/bin/bash
add_notes() {
    filename=$1

    read -p "what is the name of the file:" filename
    read -p "Enter the note you want to add:" newnote


    if [ "$newnote" != "" ]; then
        echo $newnote >> $filename
    fi
}
add_notes 