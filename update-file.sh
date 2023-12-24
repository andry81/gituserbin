#!/bin/bash

# Examples:
#   # To update all commits in all heads to update first commit(s) in all
#   # ancestor branches.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file.sh <absolute-path>/changelog.txt . -- --all
#
#   # To update all commits by tag `t1` to update first commit(s) in all
#   # ancestor branches.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file.sh <absolute-path>/changelog.txt . -- t1
#
#   # To update single commit by a tag.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file.sh <absolute-path>/changelog.txt . -- t1 --not t1^@
#
#   >
#   cd myrepo/path
#   git_filter_branch_update_file.sh <absolute-path>/changelog.txt . -- t1^!

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/git_filter_branch_update_file.sh' "$@"
