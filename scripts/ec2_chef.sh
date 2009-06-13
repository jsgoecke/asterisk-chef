#Update the system
apt-get update
#Install required Ruby files and build system
apt-get install vim ruby ruby-dev irb rdoc ri build-essential
#Fetch RubyGems and install
wget -P /tmp http://rubyforge.org/frs/download.php/56227/rubygems-1.3.3.tgz
cd /tmp
tar xvzf rubygems-1.3.3.tgz
cd rubygems-1.3.3
ruby setup.rb
#Fetch Asterisk, compile and install
wget -P /tmp http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-1.4.25.1.tar.gz
cd /tmp
tar xvzf asterisk-1.4.25.1.tar.gz
cd asterisk-1.4.25.1
make; makeinstall
#Add the Opscode gem repo and install chef
gem sources -a http://gems.opscode.com
gem install rake chef --no-rdoc --no-ri
#Add the Github gem repo
gem sources -a http://gems.github.com
#Install Adhearsion, Rails and Cucumber/Nagios gems
gem install adhearsion rails cucumber auxesis-cucumber-nagios --no-rdoc --no-ri

cd -