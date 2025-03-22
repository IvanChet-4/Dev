<h1>Homework 3-4 </h1> <br>
<br>
<br>

<h2>Задача 1</h2><br>
<br>
Создайте в старой версии playbook файл requirements.yml и заполните его содержимым:

```
---
  - src: git@github.com:AlexeySetevoi/ansible-clickhouse.git
    scm: git
    version: "1.13"
    name: clickhouse 
```

<br>

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/requirements.yml
```

<br>
<h2>Задача 2</h2><br>
<br>
При помощи ansible-galaxy скачайте себе эту роль.

<br>
<h2>Задача 3</h2><br>
<br>
Создайте новый каталог с ролью при помощи

```
ansible-galaxy role init vector-role
```

![ansible-galaxy ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-4/3.png)


<br>
<h2>Задача 4</h2><br>
<br>
На основе tasks из старого playbook заполните новую role. Разнесите переменные между vars и default

```
https://github.com/IvanChet-4/Dev/tree/main/HW3-4/roles_playbook/roles/clickhouse/defaults
https://github.com/IvanChet-4/Dev/tree/main/HW3-4/roles_playbook/roles/clickhouse/vars
https://github.com/IvanChet-4/Dev/tree/main/HW3-4/roles_playbook/roles/lighthouse/defaults
https://github.com/IvanChet-4/Dev/tree/main/HW3-4/roles_playbook/roles/lighthouse/vars
https://github.com/IvanChet-4/Dev/tree/main/HW3-4/roles_playbook/roles/vector/defaults
https://github.com/IvanChet-4/Dev/tree/main/HW3-4/roles_playbook/roles/vector/vars
```

<br>
<h2>Задача 5</h2><br>
<br>
Перенести нужные шаблоны конфигов в templates

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-4/roles_playbook/roles/vector/templates/vector.yml.j2
https://github.com/IvanChet-4/Dev/blob/main/HW3-4/roles_playbook/roles/lighthouse/templates/lighthouse.conf.j2
https://github.com/IvanChet-4/Dev/blob/main/HW3-4/roles_playbook/roles/lighthouse/templates/nginx.conf.j2
https://github.com/IvanChet-4/Dev/blob/main/HW3-4/roles_playbook/roles/clickhouse/templates/clickhouse-server-config.xml.j2
```

<br>
<h2>Задача 6</h2><br>
<br>
Опишите в README.md обе роли и их параметры. Пример качественной документации ansible role по ссылке.

<br>
<h2>Задача 7</h2><br>
<br>
Повторите шаги 3–6 для LightHouse. Помните, что одна роль должна настраивать один продукт.

<br>
<h2>Задача 8</h2><br>
<br>
Выложите все roles в репозитории. Проставьте теги, используя семантическую нумерацию. Добавьте roles в requirements.yml в playbook.

<br>
<h2>Задача 9</h2><br>
<br>
Переработайте playbook на использование roles. Не забудьте про зависимости LightHouse и возможности совмещения roles с tasks.

<br>
<h2>Задача 10</h2><br>
<br>
Выложите playbook в репозиторий.

<br>
<h2>Задача 11</h2><br>
<br>
В ответе дайте ссылки на оба репозитория с roles и одну ссылку на репозиторий с playbook.<br>
<br>

Запуск проекта

![Запуск ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-4/0.png)

![Запуск ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-4/1.png)

![Запуск ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-4/2.png)
