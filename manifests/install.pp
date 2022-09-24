# @summary
#   Installs the base Apache module

class apache::install {
  package {
    "httpd":
      ensure   => present,
  }
}
