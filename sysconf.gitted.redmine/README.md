## A Sysconf profile

This is a [SYSCONF](https://github.com/geonef/sysconf.base)
profile. SYSCONF is a method and tool to manage custom system files
for easy install, backup and sync.

This profile provides a [Redmine](http://redmine.org/) service.
Redmine is a flexible project management web application. Written
using the Ruby on Rails framework, it is cross-platform and
cross-database.


## Services

```
# netstat -tlpn
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
```

* The main service is Redmine, running on port 80.
* You can also access the MySQL service on the port 3306.


## Gitted import/export

This profile does not import/export anything by itself.

But its dependencies:
* sysconf.gitted [provides import/export](https://github.com/geonef/sysconf.gitted/tree/master/tree/etc/gitted/sync) of the ```sysconf/``` directory

* sysconf.gitted.MySQL
  [provides import/export](https://github.com/geonef/sysconf.gitted.mysql/tree/master/tree/etc/gitted/sync)
  of MySQL data in the ```mysql/``` directory.


## Gitted integration

* To create a new Gitted repository, follow the instructions at
  [How to setup Gitted for an application](https://github.com/geonef/sysconf.gitted/blob/master/doc/howto-create-new.md)
  
* Then add this Sysconf profile:
```
git subtree add -P sysconf/sysconf.gitted.redmine git@github.com:geonef/sysconf.gitted.redmine.git master
```

* Integrate it in the dependency chain, for example:
```
echo sysconf.gitted.redmine >sysconf/actual/deps
```

* Then push it to the container:
```
sysconf/gitted-client register
git push <name> master
```


## Authors

Written by Jean-Francois Gigand <jf@geonef.fr>. Feel free to contact me!
