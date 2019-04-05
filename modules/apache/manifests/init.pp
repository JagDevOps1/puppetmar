class apache {
     $sport='Judo'  
     package {'httpd':
     ensure => present,
     before => File ['/var/www/html/index.html'],
}
     notify {"my fav game is ${sport}":}

file {'/var/www/html/index.html':
source => 'puppet:///modules/apache/index.html',
notify => Service ['httpd'],
}

service {'httpd':
ensure => running,
#subscribe => File ['/var/www/html/index.html'],
require => Package ['httpd'],
}
       
}
 
