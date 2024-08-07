#!/bin/bash

# Examples:
#   >
#   cd myrepo/path
#   git_filter_branch_remove_paths.sh dir1/ file1 file2/ dir-or-file // -- dev ^t1 ^master
#
#   NOTE:
#     * `dir1`            - (dir) removed
#     * `dir1/dir2`       - (dir) removed
#     * `dir1/dir2/file1` - (file) removed
#     * `dir2/dir1`       - (dir) NOT removed
#     * `file1`           - (file) removed
#     * `dir2/file1`      - (file) NOT removed
#     * `file2`           - (file) NOT removed
#     * `dir-or-file`     - (file/dir) removed

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/scripts/git_filter_branch_remove_paths.sh' "$@"
