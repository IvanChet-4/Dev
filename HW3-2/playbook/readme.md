#Playbook

<br>
Playbook для установки Clickhouse и Vector на одном хосте.
<br>
<br>
Структура:
<br>
<br>
Данные по контейнеру:

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/compose.yml
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
https://github.com/IvanChet-4/Dev/tree/main/HW3-2/playbook/group_vars
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
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/inventory/prod.yml
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
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/site.yml
```

<br>
Настройки Vector

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/template/vector.yml.j2
```
