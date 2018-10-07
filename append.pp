file { '/tmp/eureka.txt':
  ensure => present,
}
exec {"echo this file":
   command => 'echo -e "this file" >> file1234.txt',
   path => '/usr/bin:/bin:/usr/sbin' 
}
