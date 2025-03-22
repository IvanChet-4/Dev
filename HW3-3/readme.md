<h1>Playbook</h1>

<br>
Playbook для установки Clickhouse, lighthouse и Vector на одном хосте.
<br>
<br>
Структура:
<br>
<br>
Данные по контейнеру:

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/compose.yml
```

```
Дополнительное описание:
 Образ:       robertdebock/docker-centos-openssh
 Сертификаты: ./.ssh/:/root/.ssh/
 Порты:       2222:22
```

<br>
Данные где можно отредактировать переменные версий, пакетов, директорий

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/group_vars
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook_cloudVM/group_vars
```

```
Дополнительное описание:
Версии:                        clickhouse_version, vector_version
Список пакетов:                clickhouse_packages
Директория для конфига Vector: vector_config_dir
```

<br>
Данные по хосту:

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/inventory/prod.yml
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook_cloudVM/inventory/prod.yml
```

```
Дополнительное описание:
      Хост:                       127.0.1.1
      Пользователь:               root
      Сертификат для подключения: /home/user7/3-2/08-ansible-02-playbook/playbook/.ssh/id_rsa
      Порт:                       2222
```

<br>
Данные по задачам:

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/site.yml
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook_cloudVM/site.yml
```

```
Дополнительные материалы для ознакомления:
https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html
```

<br>
Настройки Vector

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/templates/vector.yml.j2
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/templates/nginx.conf.j2
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/templates/lighthouse.conf.j2

https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook_cloudVM/templates/vector.yml.j2
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook_cloudVM/templates/nginx.conf.j2
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook_cloudVM/templates/lighthouse.conf.j2
```

```
Дополнительные материалы для ознакомления:
https://vector.dev/docs/reference/configuration/
```
