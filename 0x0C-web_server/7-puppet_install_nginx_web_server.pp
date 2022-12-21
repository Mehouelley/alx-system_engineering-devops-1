#setup nginx

package {
    'nginx':
    ensure => installed,
}

file {'/var/www/html/index.nginx-debian.html':
    content => 'Hello World!',
}

file_line {'configure redirection':
    path  =>  '/etc/nginx/sites-enabled/default',
    after =>  'server_name _;',
    line  =>  "\n\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/watch?v=qM1TFj_I8NU;\n\t}\n",
}

service {'nginx':
    ensure => running,
}
