user {"user1":
     ensure => 'present',
     home  => '/opt/home/user1',
     password => '$1$xgytgLM2$HcmP21OMAcULk97A06Zgb0',
  }
file {"/opt/home":
	ensure => 'directory',
	before => User['user1']
  }
file {"/opt/home/user1":
	ensure => 'directory',
	before => User['user1']
  }
