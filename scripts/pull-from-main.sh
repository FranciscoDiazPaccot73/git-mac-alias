#!/bin/bash

function gitpull() {
  if git show-ref --quiet refs/heads/master; then
    COMMAND="git pull origin master"
    echo "Output: $COMMAND"
    eval $COMMAND
  elif git show-ref --quiet refs/heads/main; then
    COMMAND="git pull origin main"
    echo "Output: $COMMAND"
    eval $COMMAND
  else
    echo "Neither 'master' nor 'main' branches exist."
  fi
};

gitpull