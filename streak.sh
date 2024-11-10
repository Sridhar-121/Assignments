#!/bin/bash

# This is why you don't have a commit chart.
#      .--.
#     |o_o |   
#     |:_/ |   Made by Phase (https://github.com/phase)
#    //   \ \  
#   (|     | ) Licensed under the MIT License
#  /'\_   _/'\ 
#  \___)=(___/ 

# Hardcoded GitHub username and repo
username="Sridhar-121"
repo="assignments"

url="https://github.com/$username/$repo.git"

# Create repos for pushing
git clone $url orig
git clone $url streak

cd streak

# Hardcoded start date and streak length
start_date="2024-05-01"
streak_length=10  # Modify this value if you want a different streak length

# Convert the start date to a proper format
d=$(date -d "$start_date")
i=1

# Loop through the streak
while [ $i -le $streak_length ]; do
  export GIT_AUTHOR_DATE="$d +0000" # Set commit date as fake date
  export GIT_COMMIT_DATE="$d +0000"
  
  # Get random commit message
  message=$(curl -sSL http://whatthecommit.com/index.txt)
  
  # Commit the empty changes with a random message
  git commit --allow-empty -m "$message"
  
  # Print commit details (author date and message)
  e="$GIT_AUTHOR_DATE : $message"
  echo $e
  
  # Increment the date by 1 day
  d=$(date -d "$d 1 day")
  i=$((i + 1))
done

# Clean the repo (remove unnecessary files)
git gc

# Push fake commits to the GitHub repository
git push $url main

# Push changes to the original repo (force push to overwrite history)
cd ../orig/
git push $url main -f

# Clean up by removing local repositories
cd ../
rm -rf orig
rm -rf streak
