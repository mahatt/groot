
## SHELL SHORTCUTS
alias servethis='python3 -m http.server -d $PWD'
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
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

## VERSION CONTROL


## Editor
# VIM
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
