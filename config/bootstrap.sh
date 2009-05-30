apt-get update
apt-get install vim ruby ruby-dev rubygems irb rdoc ri

gem sources -a http://gems.opscode.com
gem install chef --no-rdoc --no-ri

