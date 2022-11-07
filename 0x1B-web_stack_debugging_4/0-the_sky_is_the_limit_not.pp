#editing nginx configuration file
exec { 'fix--for-nginx':
  command => "sed -i 's|^ULIMIT=.*|ULIMIT=\"-n 1000\"|' /etc/default/nginx; service nginx restart;",
  path    => ['/usr/bin','/usr/sbin','/bin'],
}
