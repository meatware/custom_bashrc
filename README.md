# Custom Bashrc
I wrote this to learn more about bash. Many thanks to the code from projects like bash-it and oh my zsh!

## Premise

There are probably better frameworks with more options. However, I need a prompt that I fully understand and can easily port to multiple machines for DevOps. Thus, this is the best config that works for me. By limiting options and adding to this repo gradually, I get to understand bash and the features incrementally. If you spot any improvements, feel free to submit a pull request!

This bashrc is designed to work with a black background. Your mileage will vary with anything else!

## Installation

### Clone repo, activate via symlink and backup your pre-existing .bashrc
```
cd
git clone https://github.com/meatware/custom_bashrc.git
mv .bashrc .your_old_bashrc
ln -s ~/custom_bashrc/_bashrc.sh ~/.bashrc
source ~/.bashrc
```

## colour functions
This prompt has the ability to switch between ~400 colours. Some are redundant, but there should be a combination for everyone.

run `colsw N` in your terminal where N is a number between 1-400 to switch colour.

run `col_ssh user@remotehost` to copy bashrc setup to a remote host. SSH into that host and `source ~/.bashrc` to activate the copied bash setup.

See other functions in `bashrc_assets/_bash_colour_functions.sh` for more colour functions.


### Things to do:
1. ~~tidy up code faster shell check~~
2. fix last command time
3. ~~say when logged in over ssh
https://unix.stackexchange.com/questions/9605/how-can-i-detect-if-the-shell-is-controlled-from-ssh~~
4. ~~aws plugin~~
    - ~~current loaded profile~~
5. ~~update git aliases~~
    - ~~to more common set~~
6. ??
7. ssh-add profiles
8. setup_install
    - bash autocomlete
    - autojump
    - docker & docker-compose
9. enable git_minimal prompt (speed up)
    - function to turn off
    - speed check
10. ~~enable compact 2 line prompt version~~
11. auto-completion improvements
    - additional scripts
    - autocomplete aliases
12. additional functions
13. 




