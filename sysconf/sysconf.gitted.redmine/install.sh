# Installer script for sysconf "actual"  -*- shell-script -*-

. /usr/lib/sysconf.base/common.sh


# Install required Debian packages
_packages=
_packages="$_packages lighttpd"
_packages="$_packages redmine redmine-mysql"
sysconf_require_packages $_packages

# Install Tiny Tiny RSS

# # (re)Start the service through /etc/init.d/tt-rss
# if service tt-rss status >/dev/null; then
#     service tt-rss restart || nef_fatal "could not restart tt-rss"
# else
#     service tt-rss start || nef_fatal "could not start tt-rss"
# fi
