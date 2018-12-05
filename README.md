# Custom Bashrc


### Things to do:
1. separate into multiple files - source functions
2. tidy up code faster shell check
3. fix last command time
4. Fix color import and make split files less messy

### Installation

```
### Clone repo, activate via symlink and backup your pre-existing .bashrc
cd
git clone https://github.com/meatware/custom_bashrc.git
mv .bashrc .your_old_bashrc; ln -s ~/custom_bashrc/_bashrc ~/.bashrc

### Optional
# Quick-create git branch hostname here to directly edit in ~
cd ~/custom_bashrc
MYHOST="$(hostname)"
MYNAME="$(whoami)"
MYGITBRANCH="${MYNAME}/${MYHOST}_changes"
git checkout -b "$MYGITBRANCH"
```

