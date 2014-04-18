puppet-common
===================

Puppet module to install 

For more information using this tool:

https://github.com/naturalis/puppet-common

Common Functions
-------------
This a function library for common uses structures in puppet. Current functions are:

* ensure_package
* directory_structure

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

ensure_resources(common::ensure_package,$package_hash)
```
-------------

common::directory_structure
-------------
Creates directory stucture from a string. It simulates mkdir -p behaviour
This command creates the directory /data/dira/dirb even if /data does not exists.
```
common::directory_structure{ '/data/dira/dirb':}
```
Also supports owner and permissions. The owner and permissions are only set on the deepest level. 
```
common::directory_structure{ '/data/dira/dirb':
  user => 'john',
  mode => '0750',
}
```
This can also be used in combination hashes. 
```
$dir_hash = { '/data/john/doe' => {user => 'john',
									   mode => '0700'},
				  '/data/foo/bar'  => {user => 'foo',
				  					   mode => '0750'}
}

ensure_resources(common::directory_structure,$dir_hash)
```
-------------


Limitations
-------------
This module has been built on and tested against Puppet 3.4 and higher.

The module has been tested on:
- Ubuntu 12.04
- 

Authors
-------------
Author Name <atze.devries@naturalis.nl>

