# Week 1: Linux System Administration Core

This section tracks my mastery of the Linux terminal, process management, and file systems.

## Essential Navigation & File Operations
 1. pwd 
Prints your current exact folder path.

 2. ls -la
Lists all files, including hidden ones, with permissions.

 3. mkdir -p
Creates a folder and any parent folders automatically.

 4. cp -r 
Copies folders recursively.
Use this to make a quick backup of a config file before editing it.

 5. mv
Moves or renames files and folders.

## System Diagnostics & Process Monitoring
 1. top/htop
Used to find which app is freezing the server or eating CPU.

 2. ps aux 
Takes a static snapshot of all running processes.
Combine with grep to find a specific background process id.

 3. kill -9 <PID>
Forcefully terminates a running process by its ID number.

 4. df -h
Shows total and available disk space.

