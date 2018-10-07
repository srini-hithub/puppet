package {"httpd":
	ensure => 'present',
	}
#service {"httpd":
#	ensure => 'running',
#	enable => true,
#	require => Package['httpd']
#	}
file {"/var/www/html/index.html":
	ensure => 'file',
        content => 'Webserver',
        require => Package['httpd'],
	#notify => Service['httpd']
      }
service {"httpd":
	ensure => 'running',
	enable => true,
	require => Package['httpd'],
 	subscribe => File['/var/www/html/index.html']
	}
