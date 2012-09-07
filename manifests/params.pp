class supervisor::params {
  case $::operatingsystem {
    'debian': {
      $conf_file = '/etc/supervisor/supervisord.conf'
      $conf_dir = '/etc/supervisor/conf.d'
      $system_service = 'supervisor'
      $package = 'supervisor'
    }
    'ubuntu': {
      $conf_file = '/etc/supervisor/supervisord.conf'
      $conf_dir = '/etc/supervisor'
      $system_service = 'supervisor'
      $package = 'supervisor'
    }
    'centos','fedora','redhat': {
      $conf_file = '/etc/supervisord.conf'
      $conf_dir = '/etc/supervisord.d'
      $system_service = 'supervisord'
      $package = 'supervisor'
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
