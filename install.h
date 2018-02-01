cp -rf ./vimrc ~/

git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim

git clone https://github.com/powerline/fonts.git --depth=1  ~/fonts

cd ~/fonts

./install.sh

cd ..

rm -rf ~/fonts

echo "安装完毕,请打开vim，执行‘:PluginInstall’命令" 