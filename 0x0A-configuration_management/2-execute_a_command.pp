# Create a manifest that kills a process named killmenow

exec { 'killmenow':
  command  => 'pkill killmenow',
  onlyif   => 'pgrep killmenow',
  provider => 'shell',
  creates  => '/killmenow',
  path     => '/usr/bin',
}
