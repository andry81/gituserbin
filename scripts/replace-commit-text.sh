#!/usr/bin/env bash

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
#   # Remove empty lines after each `YYYY.MM.DD:` or `YYYY-MM-DD:` text lines.
#   >
#   cd myrepo/path
#   git_filter_repo_replace_commit_msg.sh -use-re-sub -re-sub-flags 're.DOTALL' '(\d\d\d\d[.-]\d\d[.-]\d\d:)(\r\n|\n|\r)[\r\n]*' '\1\2'

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/scripts/git_filter_repo_replace_commit_msg.sh' "$@"
