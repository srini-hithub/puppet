class httpd::config {
file { "/var/www/html/index.html":
	ensure => 'file',
	mode => '644',
	#content => "This is my web server\n",
	#source => 'puppet:///modules/httpd/index.html',
        content => template('httpd/index.erb')	
     }
}
