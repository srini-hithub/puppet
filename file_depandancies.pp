file {'/opt/mydirectory':
     ensure => 'directory',
     owner => 'puppet1', 
     group => 'root',
     } 
user{'puppet1':
     ensure => 'present',
     before => File['/opt/mydirectory']
     }
