# Redmine gitted demo

[Redmine](http://redmine.org/) is a flexible project management web
application. Written using the Ruby on Rails framework, it is
cross-platform and cross-database.


The [```sysconf/```](sysconf/) directory contains the Sysconf
  definitions (see the
  [official Sysconf repository](https://github.com/geonef/sysconf.base/))
  to build the
  [Gitted](https://github.com/geonef/sysconf.gitted)-enabled system
  with Redmine, its dependencies and the settings to import/export
  the Redmine MySQL database as Git files.


## Get started

**You don't need to be root!** but you need [Git](http://git-scm.com/)
and [LXC](https://linuxcontainers.org/) installed on your Linux
system. See [Gitted](https://github.com/geonef/sysconf.gitted) for
more information.

```
git clone https://github.com/geonef/gitted.redmine.demo.git
cd gitted.redmine.demo
sysconf/gitted-client register
sysconf/gitted-client add redmine
git push redmine master
```

The last command creates the LXC container ```redmine```,
install redmine and the required packages (from ```sysconf/```) and
import the data.

* Open the URL ```http://<IP>``` on your browser (get the
  container IP from the ```git push``` messages or with ```lxc-ls
  -f``` .

* Log as : *admin* / *admin*



### Export / backup changes

From the repository directory you have cloned:
```
git pull redmine master
```

It's as simple as that. Now you can make a ```git push origin
master``` to propagate the changes to the upstream remote, or any
other remote, as usual with Git.


## Git sub-tree

### PULL
```
git subtree pull -P sysconf/sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree pull -P sysconf/sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree pull -P sysconf/sysconf.gitted.mysql git@github.com:geonef/sysconf.gitted.mysql.git master
git subtree pull -P sysconf/sysconf.gitted.redmine git@github.com:geonef/sysconf.gitted.redmine.git master
```

### PUSH

```
git subtree push -P sysconf/sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree push -P sysconf/sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree push -P sysconf/sysconf.gitted.mysql git@github.com:geonef/sysconf.gitted.mysql.git master
git subtree push -P sysconf/sysconf.gitted.redmine git@github.com:geonef/sysconf.gitted.redmine.git master
```

### ...

To remove a sub-tree directory:
```
git filter-branch --index-filter 'git rm --cached --ignore-unmatch -rf sysconf/sysconf.abc' --prune-empty -f HEAD
```
