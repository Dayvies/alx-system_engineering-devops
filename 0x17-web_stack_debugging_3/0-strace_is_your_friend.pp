#puppet manifests to fix a wordpress blog
exec { 'fix-wordpress':
  command => "sed -i '\\|^<Directory /var/www/>|a DirectoryIndex index.php' /etc/apache2/apache2.conf;
   sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => '/bin',
}
