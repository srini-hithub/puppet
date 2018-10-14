# == Class: sshuser
#
# Full description of class sshuser here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { sshuser:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class sshuser {
user {"mysshuser":
	ensure => 'present',
	managehome => 'true',
     }
file {"/home/mysshuser/.ssh":
	ensure => 'directory',
	owner => 'mysshuser',
	group => 'mysshuser',
	mode => '700',
	require => User['mysshuser']
     }
file {"/home/mysshuser/.ssh/authorized_keys":
	ensure => 'file',
	owner => 'mysshuser',
        content => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5RnLVTBEC4RrWDxKbjysu9gIC6sfufSmqN9xBaizqAmgOb0QohSYQ5S8qNlvBOz036IoP64ANnIu2RGI3LjYtVHkHu6y/BPJNURx4nn5yOoLy8CiK806bsg4QHhdq0F4dnFz52SVWeyorjKbgpVnpj5lSUMh6EHg19I7TABMGWx7UhtFyzXAPQHy4ni86vJyzH8BS4vlRiqnnWc6Yiu6e+YKwbfkeAToWiWCXSVa1/yp+jGFyCzWAoAoCPbDQQsJ7Lg/gm6dGjXK57QtHWTUUbGIO1hsy4iOvy9PN7qVHyCCtzKdCiOvRR1mEtL3UNI6Y7YdvZ4FQlrkuEyfMq6KF mysshuser@ip-172-31-39-42.ec2.internal",
	require => File['/home/mysshuser/.ssh']
      }
}
