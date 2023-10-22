#!/bin/bash

# Examples:
#   >
#   cd myrepo/path
#   git_filter_branch_remove_path.sh dir1/ -- dev ^t1 ^master
#
#   NOTE:
#     * `dir1`            - (dir) removed
#     * `dir1/dir2`       - (dir) removed
#     * `dir1/dir2/file1` - (file) removed
#     * `dir2/dir1`       - (dir) NOT removed
#
#   >
#   cd myrepo/path
#   git_filter_branch_remove_path.sh file1 -- dev ^t1 ^master
#
#   NOTE:
#     * `file1`           - (file) removed
#     * `dir1/file1`      - (file) NOT removed
#
#   >
#   cd myrepo/path
#   git_filter_branch_remove_path.sh file2/ -- dev ^t1 ^master
#
#   NOTE:
#     * `file2`           - (file) NOT removed
#
#   >
#   cd myrepo/path
#   git_filter_branch_remove_path.sh dir-or-file -- dev ^t1 ^master
#
#   NOTE:
#     * `dir-or-file`     - (file/dir) removed
#

"$PROJECTS_ROOT"'/andry81/tacklelib/tacklelib/bash/tacklelib/tools/git/git_filter_branch_remove_path.sh' "$@"
