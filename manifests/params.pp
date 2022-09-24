# @summary Install Apache across operating systems
#
class apache::params {
  $install_ensure = present
  case $::osfamily {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian': {
      $install_name = 'apache'
    }
    default: {
      $install_name = 'apache'
    }
  }
}
