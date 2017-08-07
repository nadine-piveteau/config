parse_git_branch()
{
  local BRANCH=$(git symbolic-ref HEAD --short 2> /dev/null)
  if [[ ! -z "$BRANCH" ]]
  then
    echo "**($BRANCH)**"
  fi
}
YELLOW='\e[0;33m'     # Yellow
WHITE='\e[0;37m'      # White
export PS1="\[\033[01;32m\]\u@\h(ltpin)\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] ${YELLOW}\$(parse_git_branch) ${WHITE}$ "
