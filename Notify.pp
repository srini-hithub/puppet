package {'httpd':
	ensure => 'present'
	}
service {'httpd':
	ensure => 'running',
	enable => true,
        subscribe => File['/var/www/html/index.html']
        }
file {'/var/www/html/index.html':
	ensure => 'file',
	content => "This is my web server1 for testing1",
        require => Package['httpd'],
        #notify => Service['httpd']	
	}
