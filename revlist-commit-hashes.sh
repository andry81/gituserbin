#!/bin/bash

# Examples:
#   >
#   cd myrepo/path
#   git_gen_revlist_commit_hashes.sh -c // master
#
#   >
#   cd myrepo/path
#   git_gen_revlist_commit_hashes.sh -c // master // -s // . -b
#
#   >
#   cd myrepo/path
#   git_gen_revlist_commit_hashes.sh -c // master // // git hash-object --stdin
#
#   >
#   cd myrepo/path
#   git_gen_revlist_commit_hashes.sh -r // master

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/scripts/git_gen_revlist_commit_hashes.sh' "$@"
