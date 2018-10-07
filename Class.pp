class users2 {
user { 'classuser':
	ensure => 'present',
	managehome => true
    }
file {'/var/tmp/file123':
	ensure => 'file'
      }
}
# include users2

