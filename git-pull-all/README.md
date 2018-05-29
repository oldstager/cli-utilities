# git-pull-all.{fish|sh}

This shell script is used to iterate through some child directories and do `git pull` in each directory. There's a report at the end of script execution. You may use .fish version if you use [https://fishshell.com](Fish) or .sh if you use [https://www.gnu.org/software/bash/](Bash).

## How to setup 

### Fish 

1. Put inside a directory, put that directory into PATH env var. 

```
cp /path/to/git-pull-all.fish /path/that/you/want 
```

Example:

```
cp /home/user/Dowdloads/git-pull-all.sh ~/bin 
set -x PATH $PATH ~/bin
```

### Bash

1. Put inside a directory, put that directory into PATH env var. 

```
cp /path/to/git-pull-all.sh /path/that/you/want 
```

Example:

```
cp /home/user/Dowdloads/git-pull-all.sh ~/bin 
export PATH=$PATH:~/bin
```

2. Make it executable

```
chmod +x ~/bin/git-pull-all.sh
```

or

```
chmod +x ~/bin/git-pull-all.fish
```


## How to use/run 

Let's say, you have many clones of github repos in $HOME/master/rust/src 

```
cd $HOME/master/rust/src 
git-pull-all.sh
```

or (only in Bash version), you may use from any directory.

```
git-pull-all.sh $HOME/master/rust/src 
```
