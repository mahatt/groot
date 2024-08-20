## SHELL CONFIG
# append to the history file
shopt -s histappend
# enable color support of ls and also add handy aliases
if [ -x /opt/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth



## SHELL SHORTCUTS
alias servethis='python3 -m http.server -d $PWD'
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less

alias la='ls -Alh' # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='ls -Fls' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

alias 755='chmod -R 755'

alias ebrc='edit ~/.bashrc'
alias ldrc='source ~/.bashrc'

# Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

## SHELL FUNCTIONS
mkcd(){
  mkdir -p "$@" && cd "$@";
}

gtp(){
readlink -f $1
}

ffgtp(){
find . -name $1 | xargs readlink -f 
}

# Searches for text in all files in the current folder
ftext ()
{
	# -i case-insensitive
	# -I ignore binary files
	# -H causes filename to be printed
	# -r recursive search
	# -n causes line number to be printed
	# optional: -F treat search term as a literal, not a regular expression
	# optional: -l only print filenames and not the matching lines ex. grep -irl "$1" *
	grep -iIHrn --color=always "$1" . | less -r
}


## VERSION CONTROL


## Editor
# VIM
export EDITOR=vim
export VISUAL=gvim

alias g='gvim'
# VSCODE
e(){
  code $1
}
ef(){
  find . -name $1 | xargs code
}
edif(){
  code --diff $1 $2
}

## SHELL HELPERS
ntimes(){
  count=$1
  cmd=$2
  echo "[COMMAND] $cmd"
  for (( i=0;i <$count; i++))
  do
    echo "[RUN]:$i"
    $cmd
  done
}
