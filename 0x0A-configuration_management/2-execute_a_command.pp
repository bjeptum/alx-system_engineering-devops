# Puppet manifest that kills process killmenow

exec { 'killmenow':
command  => 'pkill killmenow',
onlyif   => 'pgrep killmenow',
provider => 'shell',
creates  => '/killmenow',
path     => '/usr/bin',
}
