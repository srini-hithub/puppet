user { 'user1':
     ensure =>'present', 
     home => '/opt/user1',
     managehome => true,
     password => 'x91MbVif9L64s';
      
      'user2':
       ensure => 'present',	
       home => '/opt/user2',
       managehome => 'true',
       password => 'x91MbVif9L64s';
      'user3':
       ensure => 'present',	
       home => '/opt/user3',
       managehome => 'true',
       password => 'x91MbVif9L64s';
      
    }

