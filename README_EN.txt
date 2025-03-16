* README_EN.txt
* 2025.03.16
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
Git user scripts for the `PATH` variable.

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

-------------------------------------------------------------------------------
3. PREREQUISITES
-------------------------------------------------------------------------------
Currently used these set of OS platforms, applications to run
with or from and repositories:

1. OS platforms:

* Windows 7+

2. Applications:

* msys2
  https://www.msys2.org/#installation
  - Freeware Unix-like environment for the Windows.

* cygwin
  https://cygwin.com
  - Freeware Unix-like environment for the Windows.

* Git 2.24+
  https://git-scm.com
  - Freeware console application to maintain GIT version control system.

3. Repositories:

* gitcmd
  You must put the repository working copy into the
  `$PROJECTS_ROOT/andry81/gitcmd/gitcmd` directory.

* contools--admin
  You must put the repository working copy into the
  `$PROJECTS_ROOT/andry81/contools/contools--admin` directory.

-------------------------------------------------------------------------------
4. DEPENDENCIES
-------------------------------------------------------------------------------
* gitcmd
* contools--admin

-------------------------------------------------------------------------------
5. USAGE
-------------------------------------------------------------------------------
Put `gituserbin` working copy into the directory of the root of your git
repositories directory:

<root>
 |
 +- andry81
 |   |
 |   +- gituserbin
 |       |
 |       +- gituserbin
 |

NOTE:
  Most of the scripts basically wrappers to scripts from the `gitcmd` project.
  To read the usage description you must open the corresponding dependent
  project script.

Put `gitcmd` a working copy root directory into the directory of the
root of your git repositories directory:

<root>
 |
 +- andry81
 |   |
 |   +- gitcmd
 |       |
 |       +- gitcmd
 |

Then put `contools--admin` a working copy root directory into the directory of
the root of your git repositories directory:

<root>
 |
 +- andry81
 |   |
 |   +- contools
 |       |
 |       +- contools--admin
 |

Create `PROJECTS_ROOT` environment variable with path to your git repositories
directory:

>
PROJECTS_ROOT=<root>

Put `gituserbin` a working copy scripts directory into the `PATH` variable:

>
set PATH=%PATH%;%PROJECTS_ROOT%\andry81\gituserbin\gituserbin\scripts

-------------------------------------------------------------------------------
6. PROJECT CONFIGURATION VARIABLES
-------------------------------------------------------------------------------
To be able to use the scripts you have to declare the set of environment
variables. Here is described only a limited set of variables, you have to open
each corresponding script to find out which one variable you must to define.

* PROJECTS_ROOT

  Main environment variable to call the `gitcmd` project scripts.

* GIT_REPO_DEFAULT_REMOTES

  Variable for the `gitcmd/scripts/git_init.sh` (`gituserbin/git-init.sh`)
  script to initialize multiple remotes by default.

* GIT_USER, GIT_USER_MAIL

  Git user and email by default for the
  `gitcmd/scripts/git_filter_branch_user.sh` (`gituserbin/fix-mail.sh`) script.

* GIT_SHELL_ROOT

  Main environment variable to call bash shell scripts from Windows batch
  scrtips (`*.bat`).

* GIT_AUTH_USER

  Git user with authentication to use from `gituserbin/ssh-login-*.sh`
  scripts.

* SSH_SHELL_ROOT

  Main environment variable to call `ssh.exe` console utility from
  `gituserbin/ssh-*.*` scripts.

* SSH_GIT_AUTH_USER

  Git user with authentication to use in case of git+ssh authentication,
  for example, in `gitcmd/scripts/git_init.sh`
  (`gituserbin/git-init.sh`) script.

-------------------------------------------------------------------------------
7. AUTHOR
-------------------------------------------------------------------------------
Andrey Dibrov (andry at inbox dot ru)
