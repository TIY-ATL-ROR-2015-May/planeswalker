web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
redis: redis-server
worker: QUEUE=* bundle exec rake environment resque:work
