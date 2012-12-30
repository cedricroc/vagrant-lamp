class phpmyadmin {
  # Install phpMyAdmin
  package { "phpmyadmin":
    ensure => latest,
    notify => Service["apache2"],
    require => Package['php5'],
  }

  file { 'phpmyadmin.config':
    path    => '/etc/apache2/conf.d/apache.conf',
    ensure  => present,
    source  => '/etc/phpmyadmin/apache.conf',
    require => Package['apache2', 'phpmyadmin']
  }
}