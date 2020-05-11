#!/bin/sh
# install.sh
# ------------------------------
# checkout dotfiles and install needed package
sudo apt -y install curl wget git zsh nvim fd python-pip 

#-checkout
git clone --bare https://github.com/thomas-lg/dotfiles.git $HOME/.dotfiles
function config() {
	/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .dotfiles-backup
config checkout
if [ $? = 0 ]; then
	  echo "Checked out config.";
else
	echo "Backing up pre-existing dot files.";
	config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
#-/checkout

#-install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
#-/install ohmyzsh

#-install powerlinefonts
pip install --user powerline-status
#/-install powerlinefonts

#-install nerdfonts

#-/install nerdfonts

