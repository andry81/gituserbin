#!/bin/bash

"$PROJECTS_ROOT"'/andry81/tacklelib/tacklelib/bash/tacklelib/tools/git/git_filter_repo_remove_path.sh' _externals/ --force && \
"$PROJECTS_ROOT"'/andry81/tacklelib/tacklelib/bash/tacklelib/tools/git/git_filter_repo_cleanup.sh'
