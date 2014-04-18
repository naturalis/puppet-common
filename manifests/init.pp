# == Class: common
#
# Full description of class common here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { common:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class common {
  




  define ensure_package(
    $version = 'latest'
  ){
    if !defined(Package[$name]) {
      package{ $name :
        ensure => $version,
      }
    }
  }
  

  define directory_structure(
    $user = 'root',
    $mode = '755',
  ){

    exec{"create_${name}":
      command => "/bin/mkdir -p ${name} ; /bin/chmod ${mode} ${name} ; /bin/chown ${user} ${name}",
      unless  => "/usr/bin/stat -c '%U' ${name} | /bin/grep ${user}"
    }
  }

}
