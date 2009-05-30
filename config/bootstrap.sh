apt-get update
apt-get install vim ruby ruby-dev irb rdoc ri rake
wget http://rubyforge.org/frs/download.php/56227/rubygems-1.3.3.tgz
tar xvzf rubygems-1.3.3.tgz
cd rubygems-1.3.3
ruby setup.rb

gem sources -a http://gems.opscode.com
gem install rake chef --no-rdoc --no-ri

