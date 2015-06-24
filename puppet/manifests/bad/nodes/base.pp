node default {
  file { '/etc/motd':
    ensure  => file,
    content => 'Base MOTD',
    owner   => 'root',
    group   => 'sysadmins',
    require => Group['sysadmins'],
  }
  group { 'sysadmins': ensure => present }
  package { 'vim-common': ensure  => present }
  notpresent { "something": ensure => meh }
}
