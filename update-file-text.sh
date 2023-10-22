#!/bin/bash

# Examples:
#   # To update all commits in all heads to update first commit(s) in all
#   # ancestor branches.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file_text.sh . README.md '<p/>' '</p>' -- --all
#
#   # To update all commits by tag `t1` to update first commit(s) in all
#   # ancestor branches.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file_text.sh . README.md '<p/>' '</p>' -- t1
#
#   # To update single commit by a tag (excluding all parents).
#   >
#   cd myrepo/path
#   git_filter_branch_update_file_text.sh . README.md '<p/>' '</p>' -- t1 --not t1^@
#
#   # To update master branch commits excluding tags.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file_text.sh . README.md '<p/>' '</p>' -- master ^t1 ^t2
#
#   # Remove multiline text with mixed line returns
#   >
#   cd myrepo/path
#   git_filter_branch_update_file_text.sh -E . changelog.txt '2023\.05\.23:\r?\n[^\r\n]+\r?\n' '' -- master ^t1 ^t2

"$PROJECTS_ROOT"'/andry81/tacklelib/tacklelib/bash/tacklelib/tools/git/git_filter_branch_update_file_text.sh' "$@"
