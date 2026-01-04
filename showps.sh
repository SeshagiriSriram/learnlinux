#!/bin/bash 
echo -e "\e[38;5;214m Running PS 
ps ax o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,comm,group,gid
\e[0m"
# Source - https://stackoverflow.com/a
# Posted by devnull, modified by community. See post 'Timeline' for change history
# Retrieved 2025-11-24, License - CC BY-SA 3.0
ps afx o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,comm,group,gid

