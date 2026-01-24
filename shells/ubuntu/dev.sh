echo "Now installing vim colors..."
git clone https://github.com/rafi/awesome-vim-colorschemes.git ~/temp/
mkdir ~/.vim
mv ~/temp/colors/ ~/.vim/
rm -rf ~/temp
source ~/.zshrc
