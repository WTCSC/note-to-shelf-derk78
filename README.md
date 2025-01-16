[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/x_3ULh4W)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=17705608)
# Note to Shelf


*This is a simple yet effective tool you can use to document your everday life.*

**How to use it**
- In order to run this note taking tool you have to use the `chmod +x` to get execution privileges.
- To actually run it inside bash you have to put the path of the exectuable file in the terminal if the file's in the current directory then put a `./` in front of the file, a period in front to mark the current directory.
**functions**
- This note taking tool has three functions where you can add notes, list your notes, and search through your notes.
- To add notes type the path to the exectuable file in the terminal to actually run the script then type "add" followed by the note you want to add.
- To search do the same thing but type "search" followed the by the keyword/s you want to find in your notes.
- Finally to list all your notes type the path again with "list" to list all the contents of your notes file. 

<!--

Create a shell script that functions as a command-line note-taking tool. This tool should help you quickly capture and organize thoughts, reminders, and tasks directly from the terminal.

## Requirements

- The script must support the following commands:
    - Add a new note: `note add "Your note text here"`
    - List all notes: `note list`
    - Search notes: `note search "keyword"`
- Implementation requirements:
    - Store notes in a text file with proper date/time stamps
    - Include error handling for all commands
    - Implement input validation
    - Add proper logging for debugging

## Testing Criteria

Your script will be tested against the following scenarios:

- Adding notes with special characters
- Proper file operations (read/write)
- Correct date/time formatting
- Search functionality accuracy
- Proper exit codes for success/failure

## Example Usage

```bash
#!/bin/bash

# Add a note
$ ./note.sh add "Schedule dentist appointment"
Note added successfully

# List all notes
$ ./note.sh list
2025-01-06 12:04:06 - Schedule dentist appointment
2025-01-06 12:05:04 - Buy groceries

# Search notes
$ ./note.sh search "dentist"
2025-01-06 12:04:06 - Schedule dentist appointment
```

## Tips and Tricks

You might find the following resources helpful for completing this assignment:

- https://www.redhat.com/en/blog/arguments-options-bash-scripts
- https://linuxhint.com/bash_append_line_to_file/
- https://linuxconfig.org/how-to-find-a-string-or-text-in-a-file-on-linux
- https://www.geeksforgeeks.org/create-timestamp-variable-in-bash-script/

-->