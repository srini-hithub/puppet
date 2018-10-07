if $::osfamily == 'RedHat' {
	 $package = ["httpd","vsftpd"]
#else $::osfamily == 'other' 
#	$package=['scree']
  }
 package { $package:
	ensure => present
	}
