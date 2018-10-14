class vsftpd::service inherits vsftpd {
  service { "$service":
	ensure => 'running',
	enable => true
       }
   }
