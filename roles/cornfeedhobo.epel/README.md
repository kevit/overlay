epel [![Ansible Role](https://img.shields.io/ansible/role/d/33269.svg)](https://galaxy.ansible.com/cornfeedhobo/epel)
====

Install the EPEL repository. Mostly useful as a dependency for other roles.

    ansible-galaxy install cornfeedhobo.epel

Role Variables
--------------

|Name|Default Value|
|-|-|
| `epel_key_url` | `"https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-{{ ansible_distribution_major_version }}"` |

Example Playbook
----------------

    - hosts: servers
      roles:
         - role: cornfeedhobo.epel

License
-------

MIT
