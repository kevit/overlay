cjdns [![Ansible Role](https://img.shields.io/ansible/role/d/14150.svg)](https://galaxy.ansible.com/cornfeedhobo/cjdns)
=====

Install and configure the cjdns routing daemon.

    ansible-galaxy install cornfeedhobo.cjdns

Role Variables
--------------

|Name|Default Value|
|-|-|
| `cjdns_install` | `false` |
| `cjdns_package_state` | `"present"` |
| `cjdns_packages` | `"{{ __cjdns_packages }}"` |
| `cjdns_configure` | `false` |
| `cjdns_user` | `"{{ __cjdns_user }}"` |
| `cjdns_group` | `"{{ __cjdns_group }}"` |
| `cjdns_service` | `false` |
| `cjdns_service_name` | `"{{ __cjdns_service_name }}"` |
| `cjdns_service_state` | `"started"` |
| `cjdns_service_enabled` | `true` |
| `cjdns_private_key` | `""` |
| `cjdns_public_key` | `""` |
| `cjdns_ipv6` | `""` |
| `cjdns_tun_device` | `"tun99"` |
| `cjdns_admin_address` | `"127.0.0.1"` |
| `cjdns_admin_port` | `"11234"` |
| `cjdns_admin_password` | `""` |
| `cjdns_udp_address` | `"{{ ansible_default_ipv4['address'] }}"` |
| `cjdns_udp_port` | `"43211"` |
| `cjdns_udp_connections` | `{}` |
| `cjdns_authorized_passwords` | `[]` |

Dependencies
------------

- [cornfeedhobo.epel](https://github.com/cornfeedhobo/ansible-role-epel)
- [jtyr.config_encoder_filters](https://github.com/jtyr/ansible-config_encoder_filters)

Example Playbook
----------------

    - hosts: servers
      roles:
        - role: cornfeedhobo.cjdns
          cjdns_private_key: "..."
          cjdns_public_key: "..."
          cjdns_ipv6: "..."
          cjdns_admin_password: "..."
          cjdns_udp_connections:
            "1.2.3.4:43211":
              password: "..."
              publicKey: "..."
          cjdns_authorized_passwords:
            - login: "..."
              password: "..."

License
-------

MIT
