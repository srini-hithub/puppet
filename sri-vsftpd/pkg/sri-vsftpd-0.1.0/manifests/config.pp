class vsftpd::config inherits vsftpd {
 file {"$config":
	ensure => 'file',
	content => template('vsftpd/vsftpd.conf.erb')
      }
}
