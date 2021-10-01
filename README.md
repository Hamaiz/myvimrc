## My VIMRC file

This is a vimrc file that I use. It was originally copied from 
[ThePrimeagen's](https://www.youtube.com/channel/UC8ENHE5xdFSwx71u3fDH5Xw)
youtube channel, and I made some modifications to fit my needs. 

This repo is for my personal use, and I use it on linux.


1. Start by creating two folders given below
```
mkdir ~/.vim ~/.vim/undodir

```

2. Install vim-plug which is a plugin manager that i use in my vimrc

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Clone this repo 

```
git clone https://github.com/Hamaiz/myvimrc.git vimrc && cd ./vimrc 
```

4. Move the vimrc

```
mv .vimrc ~/.vimrc
```

5. Open .vimrc file using vim
```
vim ~/.vimrc
```

6. When opened run 

```
:PlugInstall
```


