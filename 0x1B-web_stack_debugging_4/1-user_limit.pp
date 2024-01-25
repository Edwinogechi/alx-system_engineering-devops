# Puppet manifest to establish the holberton user and configure file limits

# Create the holberton user account
user { 'holberton':
  ensure => present,
}

# Define resource limits for the holberton user in a dedicated configuration file
file { '/etc/security/limits.d/holberton.conf':
  ensure  => present,
  content => "holberton hard nofile 50000\nholberton soft nofile 50000",
}

# Apply immediate changes to resource limits for the holberton user
exec { 'set-limits-holberton':
  command => '/bin/su - holberton -c "ulimit -n 50000"',
  path    => ['/bin', '/usr/bin'],
  require => User['holberton'],  # Ensure user creation precedes limits configuration
}
