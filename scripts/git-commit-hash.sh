#!/usr/bin/env bash

# Examples:
#   >
#   cd myrepo/path
#   git_gen_commit_hash.sh master
#
#   >
#   cd myrepo/path
#   git_gen_commit_hash.sh master . -b
#
#   >
#   cd myrepo/path
#   git_gen_commit_hash.sh master git hash-object --stdin

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/scripts/git_gen_commit_hash.sh' "$@"
