apt-get update
apt-get install vim ruby ruby-dev irb rdoc ri
wget -P /tmp http://rubyforge.org/frs/download.php/56227/rubygems-1.3.3.tgz
cd /tmp
tar xvzf rubygems-1.3.3.tgz
cd rubygems-1.3.3
ruby setup.rb
gem sources -a http://gems.opscode.com
gem install rake chef --no-rdoc --no-ri
cd -