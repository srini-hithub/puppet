class sshtemplate::config inherits sshtemplate {
   file {"/etc/ssh/sshd_config":
          ensure => 'file' ,
           content => template('sshtemplate/sshd_config.erb')
      }
  }
