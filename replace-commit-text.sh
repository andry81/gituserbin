#!/bin/bash

# Examples:
#   # Removes `Update README.md` line from all commits.
#   >
#   cd myrepo/path
#   git_filter_repo_replace_commit_msg.sh "Update README.md"$'\n' "" --force
#
#   # Resets a line return characters before the `git-svn-id:[ \t]` string into
#   # a 2 line return characters.
#   >
#   cd myrepo/path
#   git_filter_repo_replace_commit_msg.sh -use-re-sub -re-sub-flags 're.DOTALL' '(\r\n|\n|\r)[\r\n]*(git-svn-id:[ \t])' '\1\1\2'
#

"$PROJECTS_ROOT"'/andry81/tacklelib/tacklelib/bash/tacklelib/tools/git/git_filter_repo_replace_commit_msg.sh' "$@"
