# Mac Bash Aliases

A collection of useful Bash aliases to streamline and enhance your day-to-day work on macOS. These aliases are designed to save time and reduce the effort required for common tasks.

## Table of Contents

- [Getting Started](#getting-started)
- [Installation](#installation)
- [Aliases List](#aliases-list)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

Bash aliases are shortcuts that help you execute commands more efficiently. By defining aliases in your terminal configuration file, you can save time and keystrokes.

## Installation

1. **Backup your existing `.bash_profile` or `.bashrc` or `.zshrc`:**

   ```sh
   cp ~/.bash_profile ~/.bash_profile_backup
   # or
   cp ~/.bashrc ~/.bashrc_backup
   # or
   cp ~/.zshrc ~/.zshrc_backup
   ```

2. **Create `my_scripts folder if not exist and copy /scripts folder content`**

- Manually:
  Open a terminal and type `cd ~ && mkdir my_scripts`. and then copy the content of /scripts folder inside.
- Automatically:
  Use one of the scripts provided:

  ```python
  python installation.py
  ```

  or

  ```javascript
  node installation.js
  ```

3. **Append the [aliases](https://github.com/FranciscoDiazPaccot73/git-mac-alias/blob/main/ALIAS.md) to your `.bash_profile` or `.bashrc` or `.zshrc`:**

```sh
nano ~/.bash_profile
# or
nano ~/.bashrc
# or
nano ~/.zshrc
```

or

```sh
open -e ~/.bash_profile
# or
open -e ~/.bashrc
# or
open -e ~/.zshrc
```

4. **Reload your Bash configuration:**

   ```sh
   source ~/.bash_profile
   # or
   source ~/.bashrc
   # or
   source ~/.zshrc
   ```

## Aliases List

Here are some of the aliases included in this collection:

```sh
# General
alias ll='ls -l'                  # List all files in long format without hidden files
alias llh='ls -lah'               # List all files in long format with hidden files
alias ..='cd ..'                  # Navigate up one directory
alias ...='cd ../..'              # Navigate up two directories

# Git
alias status='git status'                                       # Show the working tree status
alias add='git add .'                                           # Add all changes
alias commit='git commit -m'                                    # Commit with a message
alias new-branch='git checkout -b'                              # Create a new local branch
alias commitall='git add . && commit'                           # Add all changes and commit with a message
alias commitm='bash ~/my_scripts/commit-multiple-messages.sh'   # Commit with multiple messages
alias push='bash ~/my_scripts/push-current-git-branch.sh'       # Push changes to the remote repository
alias pull='bash ~/my_scripts/pull-current-git-branch.sh'       # Pull changes from current remote branch
alias pullm='bash ~/my_scripts/pull-from-main.sh'               # Pull changes from main or master branch
alias revert-file='bash ~/my_scripts/revert-file.sh'            # Revert file from a remote branch

# Networking
alias myip='curl ifconfig.me'     # Get your public IP address
alias flushdns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder' # Flush DNS cache

# System Operations
alias update='sudo softwareupdate -i -a; brew update; brew upgrade' # Update macOS and Homebrew packages
alias df='df -h'                 # Show disk usage in human-readable format
alias du='du -sh *'              # Show the size of directories and files in human-readable format


Feel free to modify or extend these aliases according to your needs.

Contributing
Contributions are welcome! If you have a useful alias or improvement, please follow these steps:

Fork the repository.
Create a new branch: git checkout -b feature/your-feature.
Commit your changes: git commit -am 'Add your feature'.
Push to the branch: git push origin feature/your-feature.
Create a pull request.
```
