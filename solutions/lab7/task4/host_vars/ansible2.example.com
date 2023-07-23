---
network_connections:
- name: ens224
  type: ethernet
  state: up
  interface_name: ens224
  ip:
    address:
      - 192.168.4.30/24

