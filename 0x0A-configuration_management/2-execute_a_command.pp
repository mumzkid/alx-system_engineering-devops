# This manifest kills a process named killmenow

exec { 'killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => ['/bin', '/usr/bin'],
  onlyif  => 'pgrep killmenow',
  logoutput => true,
}
