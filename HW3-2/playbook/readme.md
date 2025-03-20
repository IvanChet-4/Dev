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
 Образ:       robertdebock/docker-centos-openssh
 Сертификаты: ./.ssh/:/root/.ssh/
 Порты:       2222:22
```

<br>
Данные где можно отредактировать переменные версий, пакетов, директорий

```
https://github.com/IvanChet-4/Dev/tree/main/HW3-2/playbook/group_vars
```

<br>
Данные по хосту:

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/inventory/prod.yml
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
