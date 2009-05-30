asterisk Mash.new unless attribute?(:asterisk)

asterisk[:manager_username] = "manager"
asterisk[:manager_password] = "password"
asterisk[:manager_read_perms]  = %w(system call log verbose command agent user config)
asterisk[:manager_write_perms] = %w(system call log verbose command agent user config)

asterisk[:sip_providers] = Mash.new
asterisk[:sip_providers][:flowroute] = Mash.new(:type => "friend", :host => "sip.flowroute.com", :dtmf_mode => "rfc2833", :context => "flowroute",
                                                :canreinvite => "no", :allowed_codecs => ['ulaw', 'g729'], :insecure => "port,invite", :qualify => "yes")

# uncomment the following to set an explicit public IP for SIP behind NAT. Default is the current host's ip address (or ec2 public IP if on ec2)
# asterisk[:public_ip] = '1.2.3.4'