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
#   # Remove specific 2 line text block with mixed line returns.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file_text.sh -E . changelog.txt '2023\.05\.23:(\r\n|\n|\r)[^\r\n]+(\r\n|\n|\r)' '' -- master ^t1 ^t2
#
#   # Remove empty lines after each `YYYY.MM.DD:` or `YYYY-MM-DD:` text lines.
#   >
#   cd myrepo/path
#   git_filter_branch_update_file_text.sh -E . changelog.txt '(\d\d\d\d[.-]\d\d[.-]\d\d:)(\r\n|\n|\r)[\r\n]*' '\1\2' -- master ^t1 ^t2

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/git_filter_branch_update_file_text.sh' "$@"
