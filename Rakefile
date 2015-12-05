desc "deploy vimrc"

task :deploy do
	
    system 'git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/vundle'
    system 'cp -f vimrc ~/.vimrc'
    system 'cp -af colors ~/.vim/'
    system 'vim +BundleInstall +qa'

    system 'sh ~/.vim/bundle/YouCompleteMe/install.sh'
    system 'cd ~/.vim/bundle/tern_for_vim/ && npm install'

end

