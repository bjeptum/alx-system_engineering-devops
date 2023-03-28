# install flask from pip3
# Install Python
class { 'python':
  version        => '3.8.0',
}

# Install pip
class { 'python::pip':
  ensure         => pip3,
}

# Install requests package
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
}

# Configure Python path
class { 'python::params':
  pythonpath     => '/usr/local/bin/python',
  pip_executable => '/usr/local/bin/pip',
}
