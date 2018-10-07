group {['devops','mygroup']:
	ensure => 'present',
        before => User['user1']
  }
user {'user1':
	ensure => 'present',
	home => '/var/user1',
	managehome => 'true',
	gid => 'devops',
        groups => 'mygroup',
        require => File['/var/user1']
      }
file {'/var/user1':
	ensure => 'directory',
     }	
