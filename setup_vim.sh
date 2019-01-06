
GROOT_VIM_DIR=$HOME/.vim
GROOT_VIM_RC=$HOME/.vimrc

# CHECK Tools required
# TODO: Alpine Ubuntu servers dont support  lot many
# packages on Avenger.


# BACKUP existing onces.
# user specific rollbacks scripts should be added bere


if [ -d "$GROOT_VIM_DIR" ]
then
	sudo cp -R $GROOT_VIM_DIR $HOME/.vim_backup
	rm -rf $GROOT_VIM_DIR
	echo "Old Vim scripts Archived in $HOME"
fi

# Move Vim Configuration to backup
if [ -f "$GROOT_VIM_RC" ]
then 
	sudo cp -R $GROOT_VIM_RC $HOME/.vimrc_backup
	rm -rf $GROOT_VIM_RC 
	echo  "Old Vim Configuration Archived in $HOME"
fi

# Start Download
GROOT_GIT="/usr/bin/git"
if [ "$GROOT_GIT" = "" ]
then
	echo "*** NOT WORKING GIT BINARY FOUND in PATH"
	echo "*** VIM Setup will stay incomplete, No Rollback for configurations"
	exit 	
fi 
echo "Using GIT : $GROOT_GIT"

#GROOT_VIM_REPO="https://github.com/sohjiro/.vim.git"
#/usr/bin/env $GROOT_GIT clone $GROOT_VIM_REPO $HOME/.vim


#Install Plugin manager
#mkdir -p ~/.vim/autoload ~/.vim/bundle
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Fetch Plugins
mkdir $HOME/.vim/grooty
/usr/bin/env $GROOT_GIT clone https://github.com/scrooloose/nerdtree.git $HOME/.vim/grooty/nerdtree


# Buffer Close
mkdir $HOME/.vim/plugin
cp ./bclose.vim  $HOME/.vim/plugin

# Update VIMRC
cp ./vimrc $HOME/.vimrc
cp ./vim_config.vim $HOME/.vim/vim_config.vim
cp ./mymap.vim  $HOME/.vim/mymap.vim






