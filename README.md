# Custom Bashrc


### Things to do:
1. ~~tidy up code faster shell check~~
2. fix last command time
3. ~~say when logged in over ssh
https://unix.stackexchange.com/questions/9605/how-can-i-detect-if-the-shell-is-controlled-from-ssh~~
4. aws plugin 
    - current loaded profile
5. update git aliases 
    - to more common set
6. alias progress to cp?
7. ssh-add profiles
8. setup_install
    - bash autocomlete
    - autojump
    - docker & docker-compose
9. enable git_minimal prompt (speed up)
    - function to turn off
    - speed check
10. enable compact 1 & 2 line prompt versions
11. auto-completion improvements
    - additional scripts
    - autocomplete aliases
12. additional functions


### Installation

#### Clone repo, activate via symlink and backup your pre-existing .bashrc
```
cd
git clone https://github.com/meatware/custom_bashrc.git
mv .bashrc .your_old_bashrc
ln -s ~/custom_bashrc/_bashrc.sh ~/.bashrc
```

