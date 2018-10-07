class package_install {

  if $::osfamily == 'RedHat'{
     $pkgname = [ 'screen', 'strace', 'sudo' ]
    }
  #elsif $::osfamily == 'Debian'{
  #  $pkgname = [ 'screen', 'strace', 'sudo' ]
  #    } 
else {
    $pkgname = [ 'screen' ]
    }
  package { $pkgname:
	ensure => 'present'
	  }
 }
#Calling the class name package_install##
include package_install
