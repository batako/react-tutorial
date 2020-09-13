#!/bin/sh

overwrite () {
  if [ ! -e $1 ];then return;fi
  (cd $1 && tar c .) | (cd $2 && tar xf -)
  rm -fr $1
}

start () {
  yarn serve
}

setup () {
  yarn install
  start
  exit 1
}

cd $APP_HOME

overwrite /tmp/node_modules/ $APP_HOME/node_modules

start || setup
