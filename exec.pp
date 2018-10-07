exec {"To capture the uptime":
      #command => 'hostname > serveruptime',
      command => 'hostname >> serveruptime',
      path => ['/usr/bin','/bin']
      }
