# Main module
class devbox ($hostname, $gitUser, $gitEmail) {
    # Set paths
    Exec {
        path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
    }

    include bootstrap
    include mysql
    include memcached
    include redis
    include postfix
    include ruby
    include php
    include phpmyadmin

    class { "apache":
        hostname => $hostname
    }

    class { "git":
        gitUser => $gitUser,
        gitEmail => $gitEmail
    }
    include svn

    include zsh
    include vim

    include xhprof
}