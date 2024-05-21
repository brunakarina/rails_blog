yarn install
bundle install
./bin/rails db:prepare


rm ./tmp/pids/server.pid
./bin/dev

