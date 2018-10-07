class package_install {

  case $::osfamily {
       'RedHat': {
          $packagename = [ 'screen' , 'strace' , 'sudo' ]
     $pkgname = [ 'screen', 'strace', 'sudo' ]
    }
      'Debian': {
    $pkgname = [ 'screen', 'strace', 'sudo' ]
      } 
       default: {
    $pkgname = [ 'screen' ]
       }
    }
##Defining the resource##
  package { $pkgname:
	ensure => present,
	  }
  }

#Calling the class name package_install##
include package_install
