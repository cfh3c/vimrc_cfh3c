
[ -z "$APP_PATH" ] && APP_PATH="$HOME/.cfh3c-vimrc"
debug_mode='0'

# ######################## to install vim ########################
#git clone https://github.com/vim/vim.git
#cd vim/src
#./configure --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/
#make
#sudo make installvim
#vim --version | grep python


cp -r ../vimrc_cfh3c $HOME/.cfh3c-vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# ######################## shell functions  ########################
msg() {
    printf '%b\n' "$1" >&2
}

debug() {
    if [ "$debug_mode" -eq '1' ] && [ "$ret" -gt '1' ]; then
        msg "An error occurred in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, we're sorry for that."
    fi
}
success() {
    if [ "$ret" -eq '0' ]; then
        msg "\33[32m[?]\33[0m ${1}${2}"
    fi
}
error() {
    msg "\33[31m[?]\33[0m ${1}${2}"
    exit 1
}

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
    ret="$?"
    debug
}

create_symlinks() {
    local source_path="$1"
    local target_path="$2"

    lnif "$source_path/.vimrc"         "$target_path/.vimrc"
    #lnif "$source_path/.vimrc.bundles" "$target_path/.vimrc.bundles"
    #lnif "$source_path/.vimrc.before"  "$target_path/.vimrc.before"
    lnif "$source_path/.vim"           "$target_path/.vim"

    #if program_exists "nvim"; then
    #    lnif "$source_path/.vim"       "~/.config/nvim"
    #    lnif "$source_path/.vimrc"     "~/.config/nvim/init.vim"
    #fi

    #touch  "$target_path/.vimrc.local"

    ret="$?"
    success "Setting up vim symlinks."
    debug
}

######################### main ########################
sudo pip install jedi

create_symlinks "$APP_PATH" \
                "$HOME"

vim +BundleInstall +qall
#vim +BundleClean +BundleInstall +qall

# ######################## Compile the YouCompleteMe plugin ########################
cd ..
mkdir ycm_build
cd ycm_build
#cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release
#cd $HOME/.vim/bundle/YouCompleteMe/
#./install.py
#./install.py --clang-completer
#./install.py --clang-completer --system-libclang
#lnif "$APP_PATH/.ycm_extra_conf.py"         "$HOME/.ycm_extra_conf.py"
#±àÒëyoucompleteme²å¼þ

#ms #"\n You may need: \nctags -R -f ~/.vim/systags --c-kinds=+p --fields=+S /usr/include /usr/local/include"
msg "\nYou need to install clang first: 1) download clang+llvm; 2)run the following commands: 'cd
clang+llvm-3.6.0-x86_64-linux-gnu', 'sudo cp -r * /usr/local', 'clang -v'(see if successful)\n"
msg "\nConfigure vimrc successfully. Thanks for installing the vim on cfh3c's configuration. You can delete
this current folfer now (has been copied to ~/.cfh3c-vimrc)"
