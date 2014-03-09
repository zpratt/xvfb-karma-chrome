yumrepo { 'chromium-el6':
  baseurl => "http://people.centos.org/hughesjr/chromium/6/x86_64/",
  gpgkey => "http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-Testing-6",
  enabled => 1,
  gpgcheck => 0
}

exec { 'yum check-update':
  command => '/usr/bin/yum check-update'
}

package { 'chromium':
  ensure => present,
  require => Yumrepo["chromium-el6"]
}
package { 'xorg-x11-server-Xvfb':
  ensure => present
}
package { 'wget':
  ensure => present
}

service { 'xvfbd':
  ensure => running,
  enable => true
}