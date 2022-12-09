# Creates a file with content
file {'/tmp/school':
content => 'I love Puppet',
owner   => 'www-data',
group   => 'www-data',
mode    => '0744'
}
