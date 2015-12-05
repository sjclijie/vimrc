desc "deploy vimrc"

task :deploy do
    
    system 'mkdir ~/.vim'
    system 'cp -f vimrc ~/.vimrc'
    system 'cp -af colors ~/.vim/'
    system 'vim +BundleInstall +qa'

end

