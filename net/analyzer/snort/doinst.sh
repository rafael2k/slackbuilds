#!/bin/sh
# got it from http://www.slacky.it/repository/slackware/slackware-11.0/network/snort/2.6.1.3/src/doinst.sh

config() {
  NEW="$1"
  OLD="`dirname $NEW`/`basename $NEW .new`"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "`cat $OLD | md5sum`" = "`cat $NEW | md5sum`" ]; then # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}
config etc/classification.config.new
config etc/gen-msg.map.new
config etc/generators.new
config etc/reference.config.new
config etc/sid.new
config etc/sid-msg.map.new
config etc/snort.conf.new
config etc/threshold.conf.new
config etc/unicode.map.new
