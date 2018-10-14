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
