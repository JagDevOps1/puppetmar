class abc {
     $var1 = 'hello'
     file {"/etc/abc":
        content => template ('abc/abc.erb'),
       }
     file {"/etc/xyz":
        source => 'puppet:///modules/abc/xyz',
     }
} 
