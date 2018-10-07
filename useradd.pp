user {'user23':
	ensure => 'present',
	home => '/home/user23',
        managehome => 'true',
        before => File['/home/user23']
    }
file {'/home/user23':
	ensure => 'directory',
	owner => 'user23',
	group => 'user23',
      }
