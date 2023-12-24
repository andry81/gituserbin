#!/bin/bash

# ex:
#   GIT_USER='joe123'
#   GIT_USER_EMAIL='joe321@email.com'

# another user variants:
#   GIT_USER_VARIANTS=('joe1', 'joseph')

# resulted combinations to fix for author + commit user:
#   1. <any user> from 'joe123@localhost' -> <any user> from 'joe321@email.com'
#   2. <any user> from 'joe123@email.com' -> <any user> from 'joe321@email.com'
#   3. 'user' from 'user@mail.com'        -> 'joe123' from 'joe321@email.com'
#   3. 'joe1' from 'joe321@email.com'     -> 'joe123' from 'joe321@email.com'
#   4. 'joseph' from 'joe321@email.com'   -> 'joe123' from 'joe321@email.com'
#

if [[ -z "${GIT_USER+x}" ]]; then
  echo "$0: error: GIT_USER must be defined"
  exit 255
fi >&2

if [[ -z "${GIT_USER_EMAIL+x}" ]]; then
  echo "$0: error: GIT_USER_EMAIL must be defined"
  exit 255
fi >&2

git filter-branch --env-filter \
    "source \"$PROJECTS_ROOT\"'/andry81/gitcmd/gitcmd/git_filter_branch_user.sh'; \
    git_fb_u a:c \"$GIT_USER_EMAIL\" '*' \"$GIT_USER@localhost\" '*'; \
    git_fb_u a:c \"$GIT_USER_EMAIL\" '*' \"$GIT_USER@${GIT_USER_EMAIL#*@}\" '*'; \
    git_fb_u a:c \"$GIT_USER_EMAIL\" \"$GIT_USER\" 'user@mail.com' 'user'; \
    for (( i=0; i < ${#GIT_USER_VARIANTS[@]}; i++ )); then \
      git_fb_u a:c \"$GIT_USER_EMAIL\" \"$GIT_USER\" \"$GIT_USER_EMAIL\" \"${GIT_USER_VARIANTS[i]}\"; \
    done" -- --all && \
"$PROJECTS_ROOT"'/andry81/gitcmd/gitcmd/git_filter_branch_cleanup.sh'
