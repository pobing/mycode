#!/bin/bash
. $HOME/.rvm/environments/default
PROJECT=$HOME/workspace/mycode
cd $PROJECT
/usr/local/bin/redis-server /usr/local/redis-2.4.13/redis.conf &
RAILS_ENV=development VVERBOSE=1 QUEUE=* rake resque:work >> "$PROJECT/log/resque.log" 2>&1 &
rails s 

