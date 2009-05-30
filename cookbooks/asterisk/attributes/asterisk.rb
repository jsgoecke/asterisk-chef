asterisk Mash.new unless attribute?(:asterisk)

asterisk[:manager_username] = "manager"
asterisk[:manager_password] = "password"
asterisk[:manager_read_perms]  = %w(system call log verbose command agent user config)
asterisk[:manager_write_perms] = %w(system call log verbose command agent user config)

# uncomment the following to set an explicit public IP for SIP behind NAT. Default is the current host's ip address (or ec2 public IP if on ec2)
# asterisk[:public_ip] = '1.2.3.4'