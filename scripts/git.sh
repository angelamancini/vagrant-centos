# Git branch in prompt.

# Place this file in /etc/profile.d/
# Add `export PS1=<things before>$(parse_git_branch)<things after>"`
# To your .bashrc or .bash_profile to show the git branch in the command prompt

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

