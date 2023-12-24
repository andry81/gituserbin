#!/bin/bash

# Examples:
#   >
#   cd myrepo/path
#   git_filter_repo_remove_path_list.sh dir1/ file1 file2/ dir-or-file // --refs dev ^t1 ^master --force
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

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/git_filter_repo_remove_path_list.sh' "$@"
