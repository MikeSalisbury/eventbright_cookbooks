default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:eventbright][:git_repository] = "https://github.com/MikeSalisbury/eventbright/"
default[:eventbright][:git_revision] = "master"
default[:eventbright][:path] = "/opt/eventbright"

default[:eventbright][:rails_env] = "production"
default[:eventbright][:log_to_stdout] = "true"

default[:eventbright][:environment] = {
  "SECRET_KEY_BASE": node[:eventbright][:secret_key_base],
  "DATABASE_URL": node[:eventbright][:database_url],
  "RAILS_ENV": node[:eventbright][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:eventbright][:log_to_stdout]
}

default[:eventbright][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
