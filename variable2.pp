#Variable declaration##
#$name = [ 'myuseri1','myuser2', 'myuser3','myuser4' ]
$name = myuser1
#$values = [ 'myfile','myfile2' ]
user { $name:
	ensure => 'present'
}
file { $values:
  ensure => 'file'
 }
