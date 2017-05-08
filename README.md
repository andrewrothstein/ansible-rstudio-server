andrewrothstein.rstudio-server
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-rstudio-server.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-rstudio-server)

Installs [RStudio Server](https://www.rstudio.com/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: rstudio-server
  roles:
    - role: andrewrothstein.rstudio-server
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
