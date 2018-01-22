# git-pull-all.fish

This Fish shell script is used to iterate through some child directories and do `git pull` in each directory. There's a report at the end of script execution.

## How to setup 

1. Put inside a directory, put that directory into PATH env var.

```
cp /path/to/git-pull-all.fish /path/that/you/want 
```

Example:

```
cp /home/user/Dowdloads/git-pull-all.sh ~/bin 
set -x PATH $PATH ~/bin
```

2. Make it executable

```
chmod +x ~/bin/git-pull-all.fish
```

## How to use/run 

Let's say, you have many clones of github repos in $HOME/master/rust/src 

```
cd $HOME/master/rust/src 
git-pull-all.fish 
```



