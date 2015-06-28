# my-vimrc

## Installation

1. Backup your old vim configuration files:

        // Linux/OSX  
        mv ~/.vim ~/.vim.orig  
        mv ~/.vimrc ~/.vimrc.orig

        // Windows  
        mv yourVimDirectory/vimfiles yourVimDirectory/vimfiles.bak  
        mv yourVimDirectory/_vimrc yourVimDirectory/_vimrc.bak

2. Clone and install this repo:

        // Linux/OSX  
        git clone https://github.com/raw34/my-vimrc.git ~/.vim  
        ln -s ~/.vim/vimrc ~/.vimrc

        // Windows  
        git clone https://github.com/raw34/my-vimrc.git yourvimdirectory/vimfiles  
        cp yourvimdirectory/vimfiles/vimrc yourvimdirectory/_vimrc

3. Setup `Vundle`:

        // Linux/OSX  
        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle  

        // Windows  
        git clone https://github.com/gmarik/vundle.git yourvimdirectory/vimfiles/bundle/vundle

4. Install bundles. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:

        :BundleInstall  
