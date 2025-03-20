<h1>Homework 3-2 </h1> <br>
<br>
<br>

<h2>Задача 1</h2><br>
<br>
Подготовьте свой inventory-файл prod.yml.

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/inventory/prod.yml 
```

<br>
<h2>Задача 2</h2><br>
<br>
Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает vector. Конфигурация vector должна деплоиться через template файл jinja2. От вас не требуется использовать все возможности шаблонизатора, просто вставьте стандартный конфиг в template файл. Информация по шаблонам по ссылке. не забудьте сделать handler на перезапуск vector в случае изменения конфигурации!

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/site.yml 
```

<br>
<h2>Задача 3</h2><br>
<br>
При создании tasks рекомендую использовать модули: get_url, template, unarchive, file.

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/site.yml 
```

<br>
<h2>Задача 4</h2><br>
<br>
Tasks должны: скачать дистрибутив нужной версии, выполнить распаковку в выбранную директорию, установить vector.

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-2/playbook/site.yml 
```

<br>
<h2>Задача 5</h2><br>
<br>
Запустите ansible-lint site.yml и исправьте ошибки, если они есть.

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/1.png)

<br>
<h2>Задача 6</h2><br>
<br>
Попробуйте запустить playbook на этом окружении с флагом --check

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/2.png)

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/3.png)

<br>
<h2>Задача 7</h2><br>
<br>
Запустите playbook на prod.yml окружении с флагом --diff. Убедитесь, что изменения на системе произведены.

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/4.png)

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/5.png)

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/6.png)

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/7.png)

<br>
<h2>Задача 8</h2><br>
<br>
Повторно запустите playbook с флагом --diff и убедитесь, что playbook идемпотентен

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/14.png)

![Запуск ansible-lint](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-2/15.png)

<br>
<h2>Задача 9</h2><br>
<br>
Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги. Пример качественной документации ansible playbook по ссылке. Так же приложите скриншоты выполнения заданий №5-8

<br>
<h2>Задача 10</h2><br>
<br>
Готовый playbook выложите в свой репозиторий, поставьте тег 08-ansible-02-playbook на фиксирующий коммит, в ответ предоставьте ссылку на него.

```
```
