* README_EN.txt
* 2024.05.16
* gituserbin

1. DESCRIPTION
2. REPOSITORIES
3. PREREQUISITES
4. DEPENDENCIES
5. USAGE
6. PROJECT CONFIGURATION VARIABLES
7. AUTHOR

-------------------------------------------------------------------------------
1. DESCRIPTION
-------------------------------------------------------------------------------
Git user script wrappers for projects root directory.

-------------------------------------------------------------------------------
2. REPOSITORIES
-------------------------------------------------------------------------------
Primary:
  * https://github.com/andry81/gituserbin/branches
    https://github.com/andry81/gituserbin.git
First mirror:
  * https://sf.net/p/gitcmd/gituserbin/ci/master/tree
    https://git.code.sf.net/p/gitcmd/gituserbin
Second mirror:
  * https://gitlab.com/andry81/gituserbin/-/branches
    https://gitlab.com/andry81/gituserbin.git

Gitcmd:

Primary:
  * https://github.com/andry81/gitcmd
First mirror:
  * https://sf.net/p/gitcmd/gitcmd
Second mirror:
  * https://gitlab.com/andry81/gitcmd

-------------------------------------------------------------------------------
3. PREREQUISITES
-------------------------------------------------------------------------------
You must put the `gitcmd` repository working copy into the
`$PROJECTS_ROOT/andry81/gitcmd/gitcmd` directory.

-------------------------------------------------------------------------------
4. DEPENDENCIES
-------------------------------------------------------------------------------
* Gitcmd

-------------------------------------------------------------------------------
5. USAGE
-------------------------------------------------------------------------------
Put `gutuserbin` scripts into the root of your git repositories to call them
using the `..` syntax from the console windows opened in a repository working
copy:

<root>
 |
 +- <USER>
 |   |
 |   +- <REPO-GROUP>
 |       |
 |       +- <REPO>
 |          # Current directory of your opened console window.
 |
 ... # gituserbin scripts ...

>
../../../<git-user-bin-script> ...

NOTE:
  Each script basically is a wrapper to a script from the `gitcmd` project.
  To read the usage description you must open the corresponding `gitcmd`
  script.

-------------------------------------------------------------------------------
6. PROJECT CONFIGURATION VARIABLES
-------------------------------------------------------------------------------
To be able to use the scripts you have to declare the set of environment
variables. Here is described only a limited set of variables, you have to open
each corresponding script to find out which one variable you must to define.

* PROJECTS_ROOT

  Main environment variable to call the `gitcmd` project scripts.

* GIT_REPO_DEFAULT_REMOTES

  Variable for the `gitcmd/git_init.sh` (`gituserbin/git-init.sh`) script to
  initialize multiple remotes by default.

* GIT_USER, GIT_USER_MAIL

  Git user and email by default for the `gitcmd/git_filter_branch_user.sh`
  (`gituserbin/fix-mail.sh`) script.

* GIT_SHELL_ROOT

  Main environment variable to call bash shell scripts from Windows batch
  scrtips (`*.bat`).

* GIT_AUTH_USER

  Git user with authentication to use from `gituserbin/ssh-login-*.sh`
  scripts.

-------------------------------------------------------------------------------
7. AUTHOR
-------------------------------------------------------------------------------
Andrey Dibrov (andry at inbox dot ru)
