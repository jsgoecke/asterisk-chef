cookbook_path     "/var/chef/cookbooks"
node_path         "/var/chef/nodes"
log_level         :info
file_store_path  "/var/chef"
file_cache_path  "/var/chef"
node_name        `hostname -f`.chomp

Chef::Log::Formatter.show_time = false