#!/bin/sh

if [ $# -eq 0 ] 
then
 echo "filesdir not specified"
 exit 1
fi

if [ $# -eq 1 ]
then
  echo "searchstr not specified"
  exit 1
fi

if [ ! -d $1 ]
then 
  echo "filesdir does not represent a directory on the filesystem"
  exit 1
fi

files_num=$(find $1 -type f | wc -l)
match_lines=$(grep -R $2 $1 | wc -l)

echo "The number of files are $files_num and the number of matching lines are $match_lines"