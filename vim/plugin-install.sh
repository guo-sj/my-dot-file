
# install plugin manager vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle

git clone https://github.com/tpope/vim-pathogen /tmp/vim-pathogen
cp /tmp/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload

# install plugins
cd ~/.vim/bundle

git clone https://github.com/preservim/nerdtree.git

git clone https://github.com/tpope/vim-sensible.git

git clone https://github.com/rlue/vim-barbaric.git

git clone https://github.com/vim-airline/vim-airline.git

git clone https://github.com/tpope/vim-fugitive

git clone https://github.com/airblade/vim-gitgutter

git clone https://github.com/altercation/vim-colors-solarized.git
