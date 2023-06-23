# Manifest tat kills process killmenow
exec { 'killmenow':
command     => 'pkill killmenow',
path        => '/usr/bin',
refreshonly => true,
}
