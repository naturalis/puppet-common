puppet-common
===================

Puppet module to install 

For more information using this tool:

https://github.com/naturalis/puppet-common

Common Functions
-------------
This a function library for common uses structures in puppet. 

common::ensure_package
-------------
Only install packages if the resource of the packages not yet defined. Installs latest versioin as default.
```
common::ensure_package{ ['package_a','package_b']:}
```
If you need to install a specific version
```
common::ensure_package{'package_a':
    version => '9.41',
  }
```
This can also be used in combination hashes
```
$package_hash = { 'package_a' => {version => '9.41'},
				  'package_b' => {version => 'latest'},
				  'package_c',	
  }
```
-------------


Limitations
-------------
This module has been built on and tested against Puppet ... and higher.

The module has been tested on:
- 
- 

Authors
-------------
Author Name <p.gomersbach@gmail.com>

