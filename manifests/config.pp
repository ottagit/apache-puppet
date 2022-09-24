# @summary Manages any Apache configurations

class apache::config {
  file {
    "apache_config":
      ensure => $apache::config_ensure,
      path   => $apache::config_path,
      source => "puppet:///module/apache${osfamily}.conf",
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
  }
}
