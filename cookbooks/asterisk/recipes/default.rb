package "asterisk"
package "asterisk-mp3"

service "asterisk" do
  supports :restart => true, :reload => true, :status => :true, :debug => :true, "logger-reload" => true, "extensions-reload" => true,
           "restart-convenient" => true, "force-reload" => true
end

template "/etc/asterisk/manager.conf" do
  source "manager.conf.erb"
  notifies :reload, resources(:service => "asterisk")
end

template "/etc/asterisk/sip.conf" do
  source "sip.conf.erb"
  notifies :reload, resources(:service => "asterisk")
end

template "/etc/asterisk/extensions.conf" do
  source "extensions.conf.erb"
  notifies "extensions-reload", resources(:service => "asterisk")
end