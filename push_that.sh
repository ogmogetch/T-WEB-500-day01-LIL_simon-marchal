#!/bin/bash

if [ $# -eq 0 ]; then

  echo "Usage: $0 <commit_message>"

  exit 1

fi

 

git add .

 

commit_message="$1"

git commit -m "$commit_message"

 

if [ $? -eq 0 ]; then

  git push

  if [ $? -eq 0 ]; then

    echo "Push successful."

    exit 0

  else

    echo "Push failed."

    exit 1

  fi

else

  echo "Commit failed. Please check your changes and try again."

  exit 1

fi
