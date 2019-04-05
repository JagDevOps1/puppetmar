class ssh {
 
    $permitrootlogin = 'yes'

    package {'openssh-server':
       ensure => present,
    }
    
    file {'/etc/ssh/sshd_config':
           content => template ('ssh/sshd_config.erb'),
           notify => Service['sshd'],
         }

    service {'sshd':
           ensure => running,
         }
}
           
