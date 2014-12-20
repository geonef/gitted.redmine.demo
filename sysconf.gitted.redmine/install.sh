# Installer script for sysconf "actual"  -*- shell-script -*-

. /usr/lib/sysconf.base/common.sh


# Install required Debian packages
_packages=
_packages="$_packages nginx"
_packages="$_packages mysql-server"
_packages="$_packages redmine redmine-mysql"
sysconf_require_packages $_packages

# Fix Nginx
_force_nginx_restart=no
if [ -r /etc/nginx/sites-enabled/default ]; then
    rm -f /etc/nginx/sites-enabled/default
    _force_nginx_restart=yes
fi
if ps x | grep nginx | grep -vq grep; then
    if [ $_force_nginx_restart = yes ]; then
        service nginx restart
    fi
else
    service nginx start
fi

if [ ! -h /etc/rc3.d/*redmine-fcgi ]; then
    update-rc.d redmine-fcgi defaults
fi

# Install the Redmine instance
# rm -f /etc/lighttpd/lighttpd.conf
# ln -s cgit.lighttpd.conf /etc/lighttpd/lighttpd.conf
# service lighttpd restart

# (re)Start the service through /etc/init.d/redmine-fcgi
if service redmine-fcgi status >/dev/null; then
    service redmine-fcgi restart || nef_fatal "could not restart redmine-fcgi"
else
    service redmine-fcgi start || nef_fatal "could not start redmine-fcgi"
fi
