# Adjust the ULIMIT to enhance Nginx server's capacity.
exec { 'modify-nginx-ulimit':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/bin:/bin/',
  notify  => Exec['restart-nginx'],  # Trigger a restart when the file is updated
}

# Ensure the existence of the file /etc/default/nginx
file { '/etc/default/nginx':
  ensure => present,
  # Add any necessary content or attributes for the file, if needed
}

# Restart Nginx server
exec { 'restart-nginx':
  command     => 'service nginx restart',  # Use the appropriate command for Nginx restart
  path        => '/usr/sbin:/usr/bin:/sbin:/bin/',
  refreshonly => true,  # Only execute this command when notified by other resources
  subscribe   => File['/etc/default/nginx'],  # Subscribe to changes in the nginx file
}
