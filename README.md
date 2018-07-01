# vimrc_cfh3c

# To configure the vimrc, run the following shell command, and the configuration will be in $HOME/.vimrc:
> sh vimrc_configuration.sh

# Notes:
- As the message shows after runing the above command, you need to install clang first for the support of the C language family:
  1) download clang+llvm (can be http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz if on Ubuntu 14); 
  2) run the following commands: 'cd clang+llvm-6.0.1-x86_64-linux-gnu', 'sudo cp -r * /usr/local', 'clang -v'(see if successful)
- Otherwise, you can change the the following A command to B command in vimrc_configuration.sh:
  A: cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
  B: cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
- For the personalized plugins or settings, you can modify the .vimrc accordingly in the beginning.
