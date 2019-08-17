# Custom Bashrc


### Things to do:
1. tidy up code faster shell check
2. fix last command time
3. say when logged in over ssh  
https://unix.stackexchange.com/questions/9605/how-can-i-detect-if-the-shell-is-controlled-from-ssh
4. aws plugin 
5. update git plugin
6. alias progress to cp?

### Installation

#### Clone repo, activate via symlink and backup your pre-existing .bashrc
```
cd
git clone https://github.com/meatware/custom_bashrc.git
mv .bashrc .your_old_bashrc
ln -s ~/custom_bashrc/_bashrc.sh ~/.bashrc
```

