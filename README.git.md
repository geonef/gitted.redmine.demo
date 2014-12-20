# Gitted redmine sysconf with redmine.geonef.info data

* This repository is PRIVATE to Geonef
* The private part is the database : ```mysql/*```


## Git sub-trees avec git.geonef.info (alias "ggit")

### PULL
git subtree pull -P sysconf/sysconf.base ggit:sysconf.base.git master
git subtree pull -P sysconf/sysconf.gitted ggit:sysconf.gitted.git master
git subtree pull -P sysconf/sysconf.gitted.redmine ggit:sysconf.gitted.redmine.git master

### PUSH
git subtree push -P sysconf/sysconf.base ggit:sysconf.base.git master
git subtree push -P sysconf/sysconf.gitted ggit:sysconf.gitted.git master
git subtree push -P sysconf/sysconf.gitted.redmine ggit:sysconf.gitted.redmine.git master


## Git sub-trees avec GitHub

### PULL
git subtree pull -P sysconf/sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree pull -P sysconf/sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree pull -P sysconf/sysconf.gitted.redmine git@github.com:geonef/sysconf.gitted.redmine.git master

### PUSH

git subtree push -P sysconf/sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree push -P sysconf/sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree push -P sysconf/sysconf.gitted.redmine git@github.com:geonef/sysconf.gitted.redmine.git master


### ...

To remove a sub-tree directory:
```
git filter-branch --index-filter 'git rm --cached --ignore-unmatch -rf sysconf/sysconf.abc' --prune-empty -f HEAD
```
