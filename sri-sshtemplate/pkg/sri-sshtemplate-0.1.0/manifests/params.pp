class sshtemplate::params (
) {

  $PermitRootLogin = 'no'
  $driftfile = '/var/lib/ntp/drift'
  $keys_file = '/etc/ntp/keys'
  $pkg = 'ntp'
  $service = 'ntpd'
  $configpath = '/etc/ntp.conf'
  $HostbasedAuthentication = 'no'
}
