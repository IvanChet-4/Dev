<h1>Homework 3-3 </h1> <br>
<br>
<br>

<h2>Задача 1</h2><br>
<br>
Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает LightHouse.

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook/site.yml
https://github.com/IvanChet-4/Dev/blob/main/HW3-3/playbook_cloudVM/site.yml
```

<h2>Задача 2</h2><br>
<br>
При создании tasks рекомендую использовать модули: get_url, template, yum, apt.

<h2>Задача 3</h2><br>
<br>
Tasks должны: скачать статику LightHouse, установить Nginx или любой другой веб-сервер, настроить его конфиг для открытия LightHouse, запустить веб-сервер.

<h2>Задача 4</h2><br>
<br>
Подготовьте свой inventory-файл prod.yml.

<h2>Задача 5</h2><br>
<br>
Запустите ansible-lint site.yml и исправьте ошибки, если они есть.

<h2>Задача 6</h2><br>
<br>
Попробуйте запустить playbook на этом окружении с флагом --check.

<h2>Задача 7</h2><br>
<br>
Запустите playbook на prod.yml окружении с флагом --diff. Убедитесь, что изменения на системе произведены.

<h2>Задача 8</h2><br>
<br>
Повторно запустите playbook с флагом --diff и убедитесь, что playbook идемпотентен.

<h2>Задача 9</h2><br>
<br>
Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги.

<h2>Задача 10</h2><br>
<br>
Готовый playbook выложите в свой репозиторий, поставьте тег 08-ansible-03-yandex на фиксирующий коммит, в ответ предоставьте ссылку на него.
