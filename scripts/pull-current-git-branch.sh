
#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  function parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
  }

  GIT_BRANCH="$(parse_git_branch)"

  echo ${GIT_BRANCH}

  if [ -z "${GIT_BRANCH}" ]; then
    echo "You have not initialized a git repository in this directory."
    exit 1
  fi

  COMMAND="git pull origin ${GIT_BRANCH}"

  echo "Output: $COMMAND"

  eval $COMMAND
else
  output="git pull origin $1"

  echo "Output: $output"

  eval $output
fi