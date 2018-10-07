user {'myuser2':
	ensure => 'present',
	home => '/opt/myuser2',
	managehome => 'true',
	password => '0UDhIiMFy.tf6' 
     }
file {"/opt/myuser2":
	ensure => 'directory',
      before => User['myuser2'],
      }
