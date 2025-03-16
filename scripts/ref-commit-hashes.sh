#!/bin/bash

# Examples:
#   >
#   cd myrepo/path
#   git_gen_ref_commit_hashes.sh -cp // --tags
#
#   >
#   cd myrepo/path
#   git_gen_ref_commit_hashes.sh -cp // --tags // . -b
#
#   >
#   cd myrepo/path
#   git_gen_ref_commit_hashes.sh -cp // master // git hash-object --stdin

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/scripts/git_gen_ref_commit_hashes.sh' "$@"
