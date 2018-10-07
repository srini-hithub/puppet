class package_install {

case $::osfamily {

	'RedHat': {

               $pkg = [ 'httpd' , screen, 'sudo' ]
             }

        'Windows': {
            
              $pkg = [ 'apache','MS-office']
	  }

	default: {
	
             $pkg = ['notepad']
           }
        }
#REsource declaration in the class using the varaibles##
    package { $pkg:
	ensure => 'present'
   }
}

#To call the class
include package_install 
