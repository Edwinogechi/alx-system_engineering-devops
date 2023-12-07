#!/usr/bin/pup
# code to install a package
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
}

