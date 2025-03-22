<h1>Roles</h1>
<br>

<h2>Requirements</h2>
<br>
Ansible >= 2.16.3<br>

<br>
<h2>Role Variables</h2>
All variables that can be overridden for different roles are stored in the defaults/main.yml and vars/main.yml files.

<h3>For lighthouse</h3>

defaults/main.yml
lighthouse_location_dir: /var/www/lighthouse

vars/main.yml
lighthouse_vcs: "https://github.com/VKCOM/lighthouse.git"
lighthouse_access_log_name: lighthouse
nginx_user_name: root

<h3>For clickhouse</h3>

defaults/main.yml
clickhouse_version: "25.2.2.39"

vars/main.yml
clickhouse_packages:
  - clickhouse-client
  - clickhouse-server
  - clickhouse-common-static

<h3>For vector</h3>

defaults/main.yml
vector_version: "0.31.0"

vars/main.yml
vector_config_dir: "{{ ansible_user_dir }}/vector_config"
