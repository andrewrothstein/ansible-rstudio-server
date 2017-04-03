[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-rstudio-server.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-rstudio-server)
andrewrothstein.rstudio-server
=========

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
