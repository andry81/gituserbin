#!/usr/bin/env bash

"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/scripts/git_filter_repo_remove_path.sh' _externals/ --force && \
"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/scripts/git_filter_repo_cleanup.sh'
