# Vim configuration

This configuration is intended for BÉPO users. 
If you do not want to use the customizations, feel free to comment out the `source ~/.vim/.vimrc.bepo` line from the `.vimrc` file.

To install this configuration run:

    cd ~
    git clone https://github.com/coreoas/.vim.git
    ln -s .vimrc .vim/.vimrc

To update the plugins, that are saved as submodules, run:

    for file in ~/.vim/pack/myplugins/start/*; do target="$HOME/.vim/pack/myplugins/start/$file"; cd "$target"; git pull; done; cd ~/.vim

