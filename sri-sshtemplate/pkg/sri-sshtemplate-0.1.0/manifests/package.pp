class sshtemplate::package {
	package {"openssh":
	ensure => 'present',
	}
}
