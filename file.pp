file {"/root/file123.txt":
	ensure => 'file',
	mode   => '755',
	owner  => 'root',
	content => 'puppet file'
}	
