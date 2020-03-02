#!/usr/bin/env ruby

echo "git push heroku master"
git push heroku master
echo "heroku run db:migrate -a shipit-poc"
heroku run db:migrate -a shipit-poc
