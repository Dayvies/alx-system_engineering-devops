#editing user configuration file
exec { 'change-os-configuration-for-holberton-user':
  command => "sed -i 's|holberton hard.*|holberton hard nofile 1024|' /etc/security/limits.conf; 
  sed -i 's|holberton soft.*|holberton soft nofile 1024|' /etc/security/limits.conf;",
  path    => ['/usr/bin','/usr/sbin','/bin'],
}
